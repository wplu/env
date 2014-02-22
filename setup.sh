#!/bin/bash

cd $(dirname $0)
for file in *rc *.env *config; do
    ln -sf $(pwd)/$file ~/.$file
done

if [[ -d "$(uname -s)" ]]; then
    find "$(pwd)/$(uname -s)" -type f |
    while read file; do
        ln -sf $file ~/$(basename $file)
    done
fi

mkdir -p ~/.vim/swaps

