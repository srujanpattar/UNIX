#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <file1> <file2> ..."
    exit 1
fi

for file in "$@"
do
    if [ ! -e "$file" ]; then
        echo "File $file does not exist"
        continue
    fi

    upper=$(echo "$file" | tr '[:lower:]' '[:upper:]')

    if [ -e "$upper" ]; then
        echo "File $upper already exists"
    else
        mv "$file" "$upper"
        echo "Renamed $file to $upper"
    fi
done
