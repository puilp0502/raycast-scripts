#!/bin/bash
# Author: Frank Yang <puilp0502@gmail.com>

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Length of clipboard content
# @raycast.mode inline
# @raycast.refreshTime 10s 
#
# Optional parameters:
# @raycast.icon 📏
# @raycast.packageName Raycast Scripts

export LANG=en_US.UTF-8

pbpaste | wc -m | awk '{ print "Clipboard Length: " $1 }'