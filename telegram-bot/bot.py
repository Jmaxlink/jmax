#!/usr/bin/env python3
import os
import json
import time
import subprocess
import threading
import telebot
from telebot import types
from collections import defaultdict

BOT_TOKEN = os.environ.get("TELEGRAM_BOT_TOKEN")
ALLOWED_USER_ID = 6310451989
WORK_DIR = os.path.expanduser("~")
CLAUDE_CMD = "/home/jmax/.local/bin/claude"
MAX_HISTORY = 20
TELEGRAM_MSG_LIMIT = 4096

PERM_REQUEST_FILE = "/tmp/claude-perm-request.json"
PERM_RESPONSE_FILE = "/tmp/claude-perm-response"

if not BOT_TOKEN:
    raise RuntimeError("TELEGRAM_BOT_TOKEN environment variable is not set.")

bot = telebot.TeleBot(BOT_TOKEN)
conversations = defaultdict(list)

# Track which chat to send permission requests to
active_chat_id = ALLOWED_USER_ID
last_request_mtime = 0

# Tools approved for the entire session (don't ask again)
session_allowed_tools = set()


def build_prompt(user_text, history):
    if len(history) > 1:
        context_lines = []
        for m in history[:-1]:
            role = "User" if m["role"] == "user" else "Assistant"
            context_lines.append(f"{role}: {m['content']}")
        context = "\n\n".join(context_lines)
        return f"Previous conversation:\n{context}\n\nUser: {user_text}"
    return user_text


def run_claude_streaming(full_prompt, status_lines, new_line_event):
    process = subprocess.Popen(
        [CLAUDE_CMD, "-p", full_prompt, "--output-format", "stream-json", "--verbose"],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        bufsize=1,
        cwd=WORK_DIR,
    )

    final_result = []

    for raw_line in iter(process.stdout.readline, ""):
        raw_line = raw_line.strip()
        if not raw_line:
            continue
        try:
            event = json.loads(raw_line)
            etype = event.get("type", "")

            if etype == "assistant":
                for block in event.get("message", {}).get("content", []):
                    btype = block.get("type", "")
                    if btype == "text":
                        text = block["text"].strip()
                        if text:
                            final_result.append(text)
                            status_lines.append(f"💬 {text[:120]}")
                            new_line_event.set()
                    elif btype == "tool_use":
                        tool = block.get("name", "")
                        inp = block.get("input", {})
                        if tool == "Bash":
                            status_lines.append(f"🔧 `{inp.get('command', '')[:100]}`")
                        elif tool in ("Write", "Edit"):
                            status_lines.append(f"📝 {tool}: {inp.get('file_path', '')}")
                        elif tool == "Read":
                            status_lines.append(f"📖 {inp.get('file_path', '')}")
                        else:
                            status_lines.append(f"🔧 {tool}")
                        new_line_event.set()

            elif etype == "result":
                r = event.get("result", "")
                if r:
                    final_result = [r]

        except (json.JSONDecodeError, KeyError):
            pass

    process.wait(timeout=300)
    return "\n".join(final_result).strip()


def send_long_message(chat_id, text):
    if not text:
        bot.send_message(chat_id, "(no response)")
        return
    for i in range(0, len(text), TELEGRAM_MSG_LIMIT):
        bot.send_message(chat_id, text[i : i + TELEGRAM_MSG_LIMIT])


def is_allowed(message):
    return message.from_user.id == ALLOWED_USER_ID


SPINNER = ["⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏"]


def processing_indicator(chat_id, message_id, stop_event, status_lines, new_line_event):
    start = time.time()
    i = 0
    while not stop_event.is_set():
        elapsed = int(time.time() - start)
        header = f"{SPINNER[i % len(SPINNER)]} Processing... ({elapsed}s)"
        recent = list(status_lines[-5:])
        text = header + ("\n\n" + "\n".join(recent) if recent else "")
        try:
            bot.edit_message_text(text[:4096], chat_id, message_id)
        except Exception:
            pass
        i += 1
        # Wake up immediately on new activity, otherwise tick every 2s
        new_line_event.wait(timeout=2)
        new_line_event.clear()


def permission_watcher():
    global last_request_mtime
    while True:
        try:
            if os.path.exists(PERM_REQUEST_FILE):
                mtime = os.path.getmtime(PERM_REQUEST_FILE)
                if mtime != last_request_mtime:
                    last_request_mtime = mtime

                    with open(PERM_REQUEST_FILE) as f:
                        data = json.load(f)

                    tool_name = data.get("tool_name", "unknown")
                    tool_input = data.get("tool_input", {})

                    if tool_name == "Bash":
                        detail = f"Command:\n`{tool_input.get('command', '')}`"
                    elif tool_name in ("Write", "Edit", "Read"):
                        detail = f"File: `{tool_input.get('file_path', '')}`"
                    else:
                        snippet = json.dumps(tool_input)[:300]
                        detail = f"`{snippet}`"

                    # Auto-allow if user approved this tool for the session
                    if tool_name in session_allowed_tools:
                        with open(PERM_RESPONSE_FILE, "w") as f:
                            f.write("allow")
                        continue

                    msg = f"🔐 *Permission Request*\n\nTool: `{tool_name}`\n{detail}"

                    markup = types.InlineKeyboardMarkup()
                    markup.row(
                        types.InlineKeyboardButton("✅ Yes (once)", callback_data="perm_once"),
                        types.InlineKeyboardButton("🔓 Yes (session)", callback_data="perm_session"),
                    )
                    markup.row(
                        types.InlineKeyboardButton("❌ No", callback_data="perm_deny"),
                    )
                    bot.send_message(active_chat_id, msg, reply_markup=markup, parse_mode="Markdown")
        except Exception:
            pass
        time.sleep(0.5)


@bot.callback_query_handler(func=lambda call: call.data in ("perm_once", "perm_session", "perm_deny"))
def handle_permission(call):
    if call.from_user.id != ALLOWED_USER_ID:
        return

    if call.data == "perm_deny":
        with open(PERM_RESPONSE_FILE, "w") as f:
            f.write("deny")
        label = "❌ Denied"
    else:
        with open(PERM_RESPONSE_FILE, "w") as f:
            f.write("allow")
        if call.data == "perm_session":
            # Extract tool name from the message and add to session allowlist
            try:
                for line in call.message.text.splitlines():
                    if line.startswith("Tool:"):
                        tool_name = line.split("`")[1]
                        session_allowed_tools.add(tool_name)
                        break
            except (IndexError, AttributeError):
                pass
            label = "🔓 Allowed for session"
        else:
            label = "✅ Allowed (once)"

    bot.edit_message_text(label, call.message.chat.id, call.message.message_id)
    bot.answer_callback_query(call.id)


@bot.message_handler(commands=["start", "help"])
def cmd_start(message):
    if not is_allowed(message):
        return
    bot.reply_to(
        message,
        "Claude Code Bot\n\n"
        "Send me any message and I'll run it through Claude Code on your VPS.\n"
        "Claude will ask your permission before running any tool.\n\n"
        "/clear  - Reset conversation history\n"
        "/status - VPS status\n"
        "/help   - Show this message",
    )


@bot.message_handler(commands=["clear"])
def cmd_clear(message):
    if not is_allowed(message):
        return
    conversations[message.from_user.id].clear()
    session_allowed_tools.clear()
    bot.reply_to(message, "Conversation and session permissions cleared.")


@bot.message_handler(commands=["status"])
def cmd_status(message):
    if not is_allowed(message):
        return
    try:
        uptime = subprocess.check_output("uptime -p", shell=True, text=True).strip()
        disk = subprocess.check_output(
            "df -h / | tail -1 | awk '{print $3\"/\"$2\" used (\"$5\")'\"}", shell=True, text=True
        ).strip()
        mem = subprocess.check_output(
            "free -h | awk '/^Mem:/{print $3\"/\"$2\" used\"}'", shell=True, text=True
        ).strip()
        claude_ver = subprocess.check_output([CLAUDE_CMD, "--version"], text=True).strip()
        bot.reply_to(
            message,
            f"VPS Status\nUptime: {uptime}\nDisk:   {disk}\nMemory: {mem}\nClaude: {claude_ver}",
        )
    except Exception as e:
        bot.reply_to(message, f"Status check failed: {e}")


@bot.message_handler(func=lambda m: True)
def handle_message(message):
    global active_chat_id
    if not is_allowed(message):
        return

    user_id = message.from_user.id
    user_text = message.text
    active_chat_id = message.chat.id

    history = conversations[user_id]
    history.append({"role": "user", "content": user_text})
    if len(history) > MAX_HISTORY:
        conversations[user_id] = history[-MAX_HISTORY:]
        history = conversations[user_id]

    full_prompt = build_prompt(user_text, history)
    status_lines = []
    stop_event = threading.Event()
    new_line_event = threading.Event()
    proc_msg = bot.send_message(message.chat.id, "⏳ Starting...")
    threading.Thread(
        target=processing_indicator,
        args=(message.chat.id, proc_msg.message_id, stop_event, status_lines, new_line_event),
        daemon=True,
    ).start()

    start_time = time.time()
    try:
        response = run_claude_streaming(full_prompt, status_lines, new_line_event)
        elapsed = int(time.time() - start_time)
        stop_event.set()
        history.append({"role": "assistant", "content": response})
        bot.edit_message_text(f"✅ Done in {elapsed}s", message.chat.id, proc_msg.message_id)
        send_long_message(message.chat.id, response)
    except subprocess.TimeoutExpired:
        stop_event.set()
        bot.edit_message_text("⏱ Timed out", message.chat.id, proc_msg.message_id)
        bot.send_message(message.chat.id, "Claude took too long (>300s). Try a simpler request.")
        history.pop()
    except Exception as e:
        stop_event.set()
        bot.edit_message_text("❌ Error", message.chat.id, proc_msg.message_id)
        bot.send_message(message.chat.id, f"Error: {e}")
        history.pop()


if __name__ == "__main__":
    watcher = threading.Thread(target=permission_watcher, daemon=True)
    watcher.start()
    print(f"Claude Code Telegram Bot started. Listening for user {ALLOWED_USER_ID}...")
    bot.infinity_polling()
