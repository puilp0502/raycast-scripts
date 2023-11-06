#!/bin/bash
# Author: Frank Yang <puilp0502@gmail.com>

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Generate UUID
# @raycast.mode compact
#
# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Raycast Scripts

python3 -c "
import uuid
print(str(uuid.uuid4()))
"
