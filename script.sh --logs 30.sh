#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 --logs <number_of_files>"
    exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Error: Number of files must be a positive integer"
    exit 1
fi

number_of_files=$1

for ((i=1; i<=$number_of_files; i++)); do
    filename="log$i.txt"
    touch $filename
    echo "File name: $filename" > $filename
    echo "Script name: $0" >> $filename
    echo "Creation date: $(date)" >> $filename
done
