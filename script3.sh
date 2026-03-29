#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Joshnavi | Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# Check Git config directory
if [ -d "$HOME/.gitconfig" ]; then
    echo "Git config exists in home directory"
else
    echo "Git config file not found (will be created after git setup)"
fi
