#!/bin/bash

LOG_FILE="$1"

if [ -z "$LOG_FILE" ]; then
    echo "Usage: $0 <log-file>"
    exit 1
fi

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File does not exist"
    exit 1
fi

echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 | awk '{print $2 " - " $1 " requests"}'

echo
echo "Top 5 most requested paths:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 | awk '{print $2 " - " $1 " requests"}'

echo
echo "Top 5 response status codes:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 | awk '{print $2 " - " $1 " requests"}'

echo
echo "Top 5 user agents:"
awk -F'"' '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5

