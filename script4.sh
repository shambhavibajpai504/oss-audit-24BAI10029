#!/bin/bash
# Script 4: Log File Analyzer
# Author: Shambhavi Bajpai
# Usage: ./log_analyzer.sh /var/log/syslog

# Command-line argument for the log file [cite: 166, 170]
LOGFILE=$1
# Default keyword is 'error' if second argument is missing [cite: 171, 173]
KEYWORD=${2:-"error"}
COUNT=0

# Check if the log file exists [cite: 174]
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    echo "Usage: ./log_analyzer.sh <path_to_log_file>"
    exit 1
fi

echo "Scanning $LOGFILE for the keyword: '$KEYWORD'..."

# While-read loop to process the file line by line [cite: 165, 177]
while IFS= read -r LINE; do
    # If statement to check for the keyword (case-insensitive) [cite: 165, 179]
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Increment the counter variable [cite: 166, 181]
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Print the last 5 matching lines as per the TODO in the instructions [cite: 184]
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "------------------------------------------"
