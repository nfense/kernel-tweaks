#!/bin/bash

# Check if is root
echo "Kernel Tweeks by Nfense."
if [ "$EUID" -ne 0 ]
  then echo "Please run this as root"
  exit
fi

# Copy kernel settings to /etc
cp ./sysctl.conf /etc

# Reload kernel from file
sysctl -p
echo "Settings updated."
