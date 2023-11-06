#!/bin/bash
# Author: Frank Yang <puilp0502@gmail.com>

# Manipulate JSON data using jq
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title jq
# @raycast.mode fullOutput
#
# Optional parameters:
# @raycast.icon ./jq.png
# @raycast.packageName Raycast Scripts
# @raycast.argument1 { "type": "text", "placeholder": "jq query" }

if ! which jq >/dev/null ;
then
    echo "ERROR: jq not installed. Install jq by executing:"
    echo "  brew install jq"
    exit
fi

export LANG=en_US.UTF-8
pbpaste | jq -r "$1"