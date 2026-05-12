#!/bin/bash
set -e

HOOK_DIR="$HOME/.claude/hooks"
SETTINGS="$HOME/.claude/settings.json"
HOOK_SCRIPT="$HOOK_DIR/pre_tool_use.py"
BOT_DIR="$(dirname "$0")"

echo "==> Installing Claude Code permission hook..."

mkdir -p "$HOOK_DIR"
cp "$BOT_DIR/hooks/pre_tool_use.py" "$HOOK_SCRIPT"
chmod +x "$HOOK_SCRIPT"

echo "==> Updating ~/.claude/settings.json..."

python3 << EOF
import json, os

settings_file = "$SETTINGS"

if os.path.exists(settings_file):
    with open(settings_file) as f:
        settings = json.load(f)
else:
    settings = {}

settings.setdefault("hooks", {})
settings["hooks"]["PreToolUse"] = [
    {
        "matcher": "",
        "hooks": [
            {
                "type": "command",
                "command": "$HOOK_SCRIPT"
            }
        ]
    }
]

with open(settings_file, "w") as f:
    json.dump(settings, f, indent=2)

print("settings.json updated.")
EOF

echo "==> Done! Restart the Telegram bot service:"
echo "    sudo systemctl restart claude-telegram"
