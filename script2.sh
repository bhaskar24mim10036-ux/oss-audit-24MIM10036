#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Joshnavi | Course: Open Source Software

PACKAGE="git"

# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -l | grep "$PACKAGE" | awk '{print "Version:", $3}'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for description
case $PACKAGE in
    git) echo "Git: Distributed version control system enabling open collaboration." ;;
    firefox) echo "Firefox: Open-source browser promoting privacy and freedom." ;;
    vlc) echo "VLC: Open-source media player that supports multiple formats." ;;
    mysql) echo "MySQL: Open-source database used in many applications." ;;
    *) echo "Unknown package." ;;
esac
