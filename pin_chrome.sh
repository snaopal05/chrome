#!/bin/bash

CHROME_ENTRY="google-chrome.desktop"
DOCK_PATH="org.gnome.shell favorite-apps"

CURRENT=$(gsettings get $DOCK_PATH)

# Tambahkan jika belum ada
if [[ "$CURRENT" != *"$CHROME_ENTRY"* ]]; then
  UPDATED=$(echo "$CURRENT" | sed "s/]$/, '$CHROME_ENTRY']/")
  gsettings set $DOCK_PATH "$UPDATED"
  echo "✅ Chrome pinned to Dash."
else
  echo "ℹ️ Chrome already pinned."
fi
