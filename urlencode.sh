#!/bin/bash
# Author: Frank Yang <puilp0502@gmail.com>

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title URL Encode
# @raycast.mode fullOutput
#
# Optional parameters:
# @raycast.icon 🔗
# @raycast.packageName Encode / Decode

export LANG=en_US.UTF-8

pbpaste | python3 -c "
from urllib.parse import quote

clipboard = input()
print(quote(clipboard))
"
