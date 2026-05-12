#!/usr/bin/env python3
import os
import subprocess
import telebot
from collections import defaultdict

BOT_TOKEN = os.environ.get("TELEGRAM_BOT_TOKEN")
ALLOWED_USER_ID = 6310451989
WORK_DIR = os.path.expanduser("~")
CLAUDE_CMD = "claude"
MAX_HISTORY = 20
TELEGRAM_MSG_LIMIT = 4096

if not BOT_TOKEN:
    raise RuntimeError("TELEGRAM_BOT_TOKEN environment variable is not set.")

bot = telebot.TeleBot(BOT_TOKEN)
conversations = defaultdict(list)


def run_claude(user_text, history):
    if len(history) > 1:
        context_lines = []
        for m in history[:-1]:  # exclude current message
            role = "User" if m["role"] == "user" else "Assistant"
            context_lines.append(f"{role}: {m['content']}")
        context = "\n\n".join(context_lines)
        full_prompt = f"Previous conversation:\n{context}\n\nUser: {user_text}"
    else:
        full_prompt = user_text

    result = subprocess.run(
        [CLAUDE_CMD, "-p", full_prompt],
        capture_output=True,
        text=True,
        cwd=WORK_DIR,
        timeout=120,
    )
    return (result.stdout or result.stderr or "").strip()


def send_long_message(chat_id, text):
    if not text:
        bot.send_message(chat_id, "(no response)")
        return
    for i in range(0, len(text), TELEGRAM_MSG_LIMIT):
        bot.send_message(chat_id, text[i : i + TELEGRAM_MSG_LIMIT])


def is_allowed(message):
    return message.from_user.id == ALLOWED_USER_ID


@bot.message_handler(commands=["start", "help"])
def cmd_start(message):
    if not is_allowed(message):
        return
    bot.reply_to(
        message,
        "Claude Code Bot\n\n"
        "Send me any message and I'll run it through Claude Code on your VPS.\n\n"
        "/clear  - Reset conversation history\n"
        "/status - Check bot and VPS status\n"
        "/help   - Show this message",
    )


@bot.message_handler(commands=["clear"])
def cmd_clear(message):
    if not is_allowed(message):
        return
    conversations[message.from_user.id].clear()
    bot.reply_to(message, "Conversation cleared.")


@bot.message_handler(commands=["status"])
def cmd_status(message):
    if not is_allowed(message):
        return
    try:
        uptime = subprocess.check_output("uptime -p", shell=True, text=True).strip()
        disk = subprocess.check_output("df -h / | tail -1 | awk '{print $3\"/\"$2\" used (\"$5\")\"}'", shell=True, text=True).strip()
        mem = subprocess.check_output("free -h | awk '/^Mem:/{print $3\"/\"$2\" used\"}'", shell=True, text=True).strip()
        claude_ver = subprocess.check_output([CLAUDE_CMD, "--version"], text=True).strip()
        bot.reply_to(
            message,
            f"VPS Status\n"
            f"Uptime: {uptime}\n"
            f"Disk:   {disk}\n"
            f"Memory: {mem}\n"
            f"Claude: {claude_ver}",
        )
    except Exception as e:
        bot.reply_to(message, f"Status check failed: {e}")


@bot.message_handler(func=lambda m: True)
def handle_message(message):
    if not is_allowed(message):
        return

    user_id = message.from_user.id
    user_text = message.text

    bot.send_chat_action(message.chat.id, "typing")

    history = conversations[user_id]
    history.append({"role": "user", "content": user_text})

    if len(history) > MAX_HISTORY:
        conversations[user_id] = history[-MAX_HISTORY:]
        history = conversations[user_id]

    try:
        response = run_claude(user_text, history)
        history.append({"role": "assistant", "content": response})
        send_long_message(message.chat.id, response)
    except subprocess.TimeoutExpired:
        bot.reply_to(message, "Claude took too long (>120s). Try a simpler request.")
        history.pop()
    except Exception as e:
        bot.reply_to(message, f"Error: {e}")
        history.pop()


if __name__ == "__main__":
    print(f"Claude Code Telegram Bot started. Listening for user {ALLOWED_USER_ID}...")
    bot.infinity_polling()
