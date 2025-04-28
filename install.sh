#!/bin/bash

# Buat folder yang diperlukan
mkdir -p ~/.config/systemd/user
mkdir -p ~/.config/autostart

# Copy script utama
cp auto_chrome_restore.sh ~/auto_chrome_restore.sh
chmod +x ~/auto_chrome_restore.sh

# Copy systemd service
cp auto_chrome_restore.service ~/.config/systemd/user/auto_chrome_restore.service

# Copy autostart desktop
cp chrome-start.desktop ~/.config/autostart/chrome-start.desktop

# Reload systemd user
systemctl --user daemon-reload
systemctl --user enable auto_chrome_restore.service
systemctl --user start auto_chrome_restore.service

# Selesai
echo "Install selesai. Silakan reboot komputer."
