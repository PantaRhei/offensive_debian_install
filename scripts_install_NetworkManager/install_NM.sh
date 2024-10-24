#!/bin/bash
sudo apt update
sudo apt upgrade

sudo apt install network-manager

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
sudo apt install network-manager-gnome
