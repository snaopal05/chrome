#!/bin/bash

# Tunggu desktop dan Chrome siap
sleep 20

# Fokus Chrome manual (wtype tidak bisa fokus window di Wayland)

# Tekan Enter untuk "Restore" tab sebelumnya
wtype -k Return
sleep 2

# Tekan Enter 15x, delay 5 detik
for i in {1..15}
do
    wtype -k Return
    sleep 5
done
