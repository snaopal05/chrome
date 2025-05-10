#!/bin/bash

# Langkah 1: Menonaktifkan Android Studio dari autostart
if [ -d "$HOME/.config/autostart" ]; then
    FILE="$HOME/.config/autostart/android-studio.desktop"
    if [ -f "$FILE" ]; then
        rm "$FILE"
        echo "Android Studio berhasil dinonaktifkan dari autostart."
    else
        echo "Tidak ada entri Android Studio di autostart."
    fi
else
    echo "Folder autostart tidak ditemukan."
fi

# Langkah 2: Menjalankan Chrome dengan opsi restore
echo "Membuka Google Chrome dengan opsi restore-last-session..."
google-chrome --restore-last-session --no-first-run &
