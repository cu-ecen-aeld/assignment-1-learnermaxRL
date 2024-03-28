#!/bin/bash

# Check if the correct number of arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Incorrect number of arguments."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile="$1"
writestr="$2"

# Check if both arguments are provided
if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Error: Missing arguments."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

# Create the directory path if it doesn't exist
output_dir=$(dirname "$writefile")
mkdir -p "$output_dir"

# Write the string to the file
echo "$writestr" > "$writefile"

# Verify if the file has been created
if [ -e "$writefile" ]; then
    echo "File created successfully: $writefile"
else
    echo "Failed to create the file: $writefile"
    exit 1
fi

exit 0
