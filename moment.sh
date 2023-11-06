#!/bin/bash
# Author: Frank Yang <puilp0502@gmail.com>

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Moment
# @raycast.mode compact
#
# Optional parameters:
# @raycast.icon 🕜
# @raycast.packageName Raycast Scripts
# @raycast.argument1 { "type": "text", "placeholder": "timestamp" }

python3 -c "
from datetime import datetime, timezone
import sys
arg1 = '$1'.strip()

if arg1 in ('', '.', 'now'):
    print(int(datetime.utcnow().timestamp()*1000))
    sys.exit(0)

arg1 = arg1.replace(',', '')
i = int(arg1)
if len(arg1) <= 10:
    dt = datetime.fromtimestamp(i, tz=timezone.utc)
elif len(arg1) <= 13:
    dt = datetime.fromtimestamp(i/1_000, tz=timezone.utc)
elif len(arg1) <= 16:
    dt = datetime.fromtimestamp(i/1_000_000, tz=timezone.utc)
else:
    dt = datetime.fromtimestamp(i/1_000_000_000, tz=timezone.utc)

print(dt.astimezone().isoformat())
"