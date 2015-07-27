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

git clone git@github.com:farazdagi/vim-go-ide.git ~/.vim_go_runtime
sh ~/.vim_go_runtime/bin/install

