#!/bin/bash
set -e

echo "==> Creating virtual environment..."
python3 -m venv venv
echo "==> Installing dependencies..."
venv/bin/pip install -r requirements.txt

echo "==> Creating .env file..."
if [ ! -f .env ]; then
    cp .env.example .env
    echo "Edit .env and set your TELEGRAM_BOT_TOKEN, then re-run this script."
    exit 1
fi

echo "==> Installing systemd service..."
sudo cp claude-telegram.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable claude-telegram
sudo systemctl restart claude-telegram

echo "==> Done! Check status with:"
echo "    sudo systemctl status claude-telegram"
echo "    journalctl -u claude-telegram -f"
