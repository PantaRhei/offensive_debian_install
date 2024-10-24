#!/bin/bash
echo "[*] Updating and Upgrading the system..."
sudo apt update -y && sudo apt upgrade -y

sudo apt install xorg i3 i3status dmenu

echo "exec i3" > ~/.xinitrc
#Already setup in config file
#Maybe need change keyboard layout
sudo apt install brightnessctl

echo "[*] For start i3, run 'startx' command."
