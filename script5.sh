#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Shambhavi Bajpai
# Purpose: Generate a personalized FOSS philosophy statement

echo "------------------------------------------"
echo "   Open Source Manifesto Generator"
echo "------------------------------------------"
echo "Answer three questions to generate your manifesto."
echo

# Using 'read' for interactive user input as required [cite: 188, 193-196]
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Capture current date and username [cite: 188, 197]
DATE=$(date +'%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_${USER_NAME}.txt"

# Compose the paragraph and write to file [cite: 188, 199, 200]
{
    echo "=========================================="
    echo "       PERSONAL OPEN SOURCE MANIFESTO"
    echo "=========================================="
    echo "Author: $USER_NAME"
    echo "Date  : $DATE"
    echo "------------------------------------------"
    echo "I believe in the power of $TOOL because it represents the core of community collaboration."
    echo "To me, digital freedom means $FREEDOM — the right to see, modify, and improve our tools."
    echo "In the spirit of FOSS, I commit to building $BUILD and sharing it with the world."
    echo "=========================================="
} > "$OUTPUT"

echo
echo "SUCCESS: Your manifesto has been saved to $OUTPUT"
echo "------------------------------------------"

# Display the contents of the generated file [cite: 202]
cat "$OUTPUT"
