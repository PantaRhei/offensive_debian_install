#!/bin/bash
mkdir -p ~/.custom_scripts

cp ../useful_scripts/*.sh ~/.custom_scripts

echo 'export PATH="$HOME/.custom_scripts:$PATH"' >> ~/.bashrc
