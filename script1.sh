#!/bin/bash
# Script 1: System Identity Report
# Author: Shambhavi Bajpai
# Course: Open Source Software

STUDENT_NAME="Shambhavi Bajpai"
SOFTWARE_CHOICE="VLC Media Player"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -d | cut -f2) 
CURRENT_DATE=$(date)

echo "=========================================="
echo "       $SOFTWARE_CHOICE Open Source Audit"
echo "=========================================="
echo "Student Name : $STUDENT_NAME"
echo "Kernel       : $KERNEL"
echo "Distribution : $DISTRO"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"
echo "------------------------------------------"
echo "Message: This OS is covered under the GNU GPL License."
echo "=========================================="

