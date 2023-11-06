#!/bin/bash
# Author: Frank Yang <puilp0502@gmail.com>

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Base64 Decode
# @raycast.mode fullOutput
#
# Optional parameters:
# @raycast.icon 🔗
# @raycast.packageName Encode / Decode

export LANG=en_US.UTF-8

pbpaste | python3 -c "
from base64 import b64decode

clipboard = input()
print(b64decode(clipboard))
"
