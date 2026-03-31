#!/bin/bash
# Script 2: FOSS Package Inspector
# Checks if VLC is installed and provides a philosophy note

PACKAGE="vlc"

# Check if package is installed using dpkg (standard for Ubuntu)
if dpkg -s $PACKAGE &>/dev/null; then
    echo "SUCCESS: $PACKAGE is installed on this system."
    # Extract Version and License info
    dpkg -s $PACKAGE | grep -E 'Version|Section|Description'
else
    echo "ALERT: $PACKAGE is NOT installed."
    echo "Please run 'sudo apt install vlc' to audit this software."
fi

echo "------------------------------------------"
# Case statement for philosophy note
case $PACKAGE in
    vlc)
        echo "Philosophy Note: VLC is a student-built project from Paris that champions codec freedom."
        ;;
    firefox)
        echo "Philosophy Note: Firefox is a non-profit fighting for an open web."
        ;;
    *)
        echo "Philosophy Note: This is a community-driven open source tool."
        ;;
esac
