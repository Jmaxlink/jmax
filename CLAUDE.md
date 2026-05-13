# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This repo contains a single project: `telegram-bot/` — a Telegram bot that exposes Claude Code CLI as a remote interface over Telegram, designed to run as a persistent systemd service on a VPS.

## Setup & Running

```bash
cd telegram-bot

# First-time setup: creates venv, installs deps, installs + enables systemd service
bash setup.sh

# Run directly (outside systemd, for testing)
venv/bin/python3 bot.py

# Manage the systemd service
sudo systemctl status claude-telegram
sudo systemctl restart claude-telegram

# Follow live logs
journalctl -u claude-telegram -f
```

The bot requires a `.env` file in `telegram-bot/` with `TELEGRAM_BOT_TOKEN=<token>`. Copy `.env.example` as a starting point.

There are no automated tests and no linter configuration.

## Architecture

The bot is entirely contained in `telegram-bot/bot.py`. Its flow:

1. **Message handling** — Only messages from the hardcoded `ALLOWED_USER_ID` are processed. On each message, conversation history (up to `MAX_HISTORY=20` turns) is assembled into a single prompt string and passed to Claude.

2. **Claude invocation** — Claude Code CLI is spawned via `subprocess.Popen` with `--output-format stream-json --verbose`. The bot reads stdout line-by-line, parses JSON events, and updates a live Telegram status message showing the spinner + recent tool activity (tool names, file paths, bash commands). Final answer comes from the last `result` event or accumulated `assistant` text blocks.

3. **Permission system** — Claude Code's permission hook writes a JSON payload to `/tmp/claude-perm-request.json`. A background thread (`permission_watcher`) polls this file every 0.5 s and sends an inline-keyboard message to Telegram asking the user to approve/deny/allow-for-session. The user's choice is written back to `/tmp/claude-perm-response`, which Claude Code reads to proceed. Tools approved for the session are cached in `session_allowed_tools` to skip future prompts.

4. **Conversation memory** — History is kept in-memory in the `conversations` dict (keyed by Telegram user ID). `/clear` resets both history and the session permission allowlist.

## Key Constants (bot.py)

| Name | Purpose |
|---|---|
| `ALLOWED_USER_ID` | Single authorized Telegram user ID |
| `WORK_DIR` | Working directory for Claude subprocess (`~`) |
| `CLAUDE_CMD` | Absolute path to the `claude` binary |
| `MAX_HISTORY` | Max conversation turns kept in memory |
| `PERM_REQUEST_FILE` / `PERM_RESPONSE_FILE` | Tmp files used for the permission handshake |

## Deployment Notes

- The systemd service file (`claude-telegram.service`) hardcodes paths under `/home/jmax/jmax/telegram-bot/`. Update `User=`, `WorkingDirectory=`, `EnvironmentFile=`, and `ExecStart=` if deploying under a different user or path.
- The service restarts automatically on failure (`Restart=always`, `RestartSec=5`).
- Conversation state is lost on restart (in-memory only).
