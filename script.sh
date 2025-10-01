#!/bin/bash

# Check if the user is root
if [ $(id -u) -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

# Check if the user is in the sudoers file
if ! sudo -v; then
    echo "Please run as root"
    exit 1
fi

