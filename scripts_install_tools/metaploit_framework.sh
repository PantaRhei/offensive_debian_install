#!/bin/bash
echo "[*] Installing Metasploit"
echo "[*] Installing dependencies"
sudo apt install autoconf bison build-essential postgresql libaprutil1 libgmp3-dev libpcap-dev openssl libpq-dev libreadline6-dev libsqlite3-dev libssl-dev locate libsvn1 libtool libxml2 libxml2-dev libxslt-dev wget libyaml-dev ncurses-dev  postgresql-contrib xsel zlib1g zlib1g-dev curl


echo "[*] Downloading script to install Metasploit"
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall

Echo "[*] Installing Metasploit"
chmod 755 msfinstall
./msfinstall

echo "[*] Cleaning up"
rm msfinstall
