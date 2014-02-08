#!/bin/bash

cd $(dirname $0)
for file in *rc *.env *config; do
    ln -sf $(pwd)/$file ~/.$file
done
