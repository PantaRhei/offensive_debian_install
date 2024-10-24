#!/bin/bash
echo "[*] Let's me do black magic for you and run sudo rm -rf /"

install_scripts() {
    read -n 1 -s -r -p "touch one key..."
    local FOLDER="$1"



    for SCRIPT in "$FOLDER"/*; do
        #check if the file is executable
        if [ -x "$SCRIPT" ]; then
        echo "[+] Exec: $SCRIPT"
        "$SCRIPT"
        else
        echo "$SCRIPT can not execute."
        fi
    done
}


i3_folder="scripts_install_i3"
NM_folder="scripts_install_NetworkManager"
tools_folder="scripts_install_tools"

install_scripts "$i3_folder"
install_scripts "$NM_folder"
install_scripts "$tools_folder"
install_scripts "$scripts_folder"

echo "[*] Need reboot"
