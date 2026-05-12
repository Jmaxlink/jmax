#!/usr/bin/env python3
import sys
import json
import os
import time

REQUEST_FILE = "/tmp/claude-perm-request.json"
RESPONSE_FILE = "/tmp/claude-perm-response"
TIMEOUT_SECONDS = 120

tool_info = json.loads(sys.stdin.read())

# Clear any stale response
if os.path.exists(RESPONSE_FILE):
    os.remove(RESPONSE_FILE)

# Write request for the bot to pick up
with open(REQUEST_FILE, "w") as f:
    json.dump(tool_info, f)

# Wait for user response via Telegram
for _ in range(TIMEOUT_SECONDS * 2):
    if os.path.exists(RESPONSE_FILE):
        with open(RESPONSE_FILE) as f:
            response = f.read().strip()
        try:
            os.remove(RESPONSE_FILE)
            os.remove(REQUEST_FILE)
        except OSError:
            pass
        if response == "allow":
            sys.exit(0)
        else:
            print("Permission denied by user via Telegram")
            sys.exit(2)
    time.sleep(0.5)

# Timeout — deny for safety
try:
    os.remove(REQUEST_FILE)
except OSError:
    pass
print("Permission request timed out — denied for safety")
sys.exit(2)
