#!/bin/bash
echo "[*] Let's me do black magic for you and run sudo -rf /"

install_scripts() {
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
scripts_folder="scripts_install_scripts"

install_scripts "$i3_folder"
install_scripts "$NM_folder"
install_scripts "$tools_folder"
install_scripts "$scripts_folder"
