#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Shambhavi Bajpai
# Purpose: Audit system directories for permissions and disk usage

# List of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "=========================================="

# For loop to iterate through directories [cite: 147]
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using awk [cite: 148, 157]
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get directory size using du [cite: 157]
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        # Handle cases where directory doesn't exist [cite: 161]
        echo "$DIR does not exist on this system"
    fi
done

echo "------------------------------------------"
# Section checking if VLC config directory exists [cite: 162]
VLC_CONFIG="$HOME/.config/vlc"
if [ -d "$VLC_CONFIG" ]; then
    echo "VLC Configuration Directory found at $VLC_CONFIG"
    ls -ld "$VLC_CONFIG" | awk '{print "Permissions: " $1 " | Owner: " $3}'
else
    echo "Note: VLC config directory not found. It will be created after running VLC for the first time."
fi
echo "=========================================="
