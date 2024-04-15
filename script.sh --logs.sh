#!/bin/bash

if [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then
    if [ $# -ne 2 ]; then
        echo "Error: --logs option requires a number of files"
        exit 1
    fi

for ((i=1; i<=100; i++)); do
    filename="log$i.txt"
    touch $filename
    echo "File name: $filename" > $filename
    echo "Script name: $0" >> $filename
    echo "Creation date: $(date)" >> $filename
done

