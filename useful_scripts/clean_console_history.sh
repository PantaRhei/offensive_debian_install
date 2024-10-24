#!/bin/bash
echo "[*] Warning clearing history just for bash and zsh"
echo "" > ~/.bash_history 2> /dev/null
history -c
echo "" > ~/.zsh_history 2> /dev/null
history -c
