#!/bin/bash

# Cek apakah folder autostart ada
if [ -d "$HOME/.config/autostart" ]; then
    # Cari file terkait Android Studio di folder autostart
    FILE="$HOME/.config/autostart/android-studio.desktop"
    
    if [ -f "$FILE" ]; then
        # Hapus file .desktop Android Studio dari autostart
        rm "$FILE"
        echo "Android Studio berhasil dinonaktifkan dari autostart."
    else
        echo "Tidak ada entri Android Studio di autostart."
    fi
else
    echo "Folder autostart tidak ditemukan."
fi
