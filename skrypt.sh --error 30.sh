#!/bin/bash

if [ "$1" = "--error" ] || [ "$1" = "-e" ]; then

    count=${2:-100}
    mkdir -p errorx
    for ((i=1; i<=$count; i++)); do
        echo "File: error$i.txt" > errorx/error$i.txt
        echo "Created by: $0" >> errorx/error$i.txt
        echo "Date: $(date)" >> errorx/error$i.txt
    done

    echo "Created $count files in the errorx directory."
    exit 0
fi
