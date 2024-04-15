#!/bin/bash

if [ "$1" = "--help" ]; then
    echo "Usage: $0 [--init] [--error <number of files>] [--logs <number of files>]"
    echo ""
    echo "Options:"
    echo "  --init          Clone the repository and add its path to the PATH environment variable"
    echo "  --error, -e     Create error files with the specified number of files"
    echo "  --logs          Create log files with the specified number of files"
    exit 0
fi
