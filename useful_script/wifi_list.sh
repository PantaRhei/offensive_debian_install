#!/bin/bash
echo "List available wifi networks"

nmcli device wifi list

if [ $? -ne 0 ]; then
    echo "Error: failed to list available wifi networks"
    exit 1
fi
