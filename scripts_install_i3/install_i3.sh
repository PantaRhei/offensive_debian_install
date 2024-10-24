#!/bin/bash
echo "[*] Updating and Upgrading the system..."
sudo apt update -y && sudo apt upgrade -y

sudo apt install xorg i3 i3status dmenu

echo "exec i3" > ~/.xinitrc

echo "[*] For start i3, run 'startx' command."

mkdir -p ~/.config/i3
cp config ~/.config/i3/config

#Already setup in config file
#Maybe need change keyboard layout
sudo apt install brightnessctl
