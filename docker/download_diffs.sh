#!/bin/bash

# Check if URL and directory are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <URL> <directory>"
    exit 1
fi

URL=$1
DIRECTORY=$2

# Create the directory if it doesn't exist
mkdir -p $DIRECTORY

# Download the diffs
curl -o $DIRECTORY/diffs.txt $URL

echo "Diffs downloaded to $DIRECTORY/diffs.txt"
