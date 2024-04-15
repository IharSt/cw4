#!/bin/bash

if [ "$1" = "--init" ]; then
    git clone https://github.com/IharSt/cw4/tree/Tag1
    repo_dir="$(pwd)/repozytorium"
    echo "export PATH=\"$repo_dir:\$PATH\"" >> ~/.bashrc
    source ~/.bashrc 
    echo "Repozytorium zostało sklonowane i ścieżka została dodana do PATH."
    exit 0
fi

echo "Usage: $0 --init"

