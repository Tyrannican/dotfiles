#!/bin/bash

CFG=~/.config

configs="$(pwd)/display $(pwd)/editor"
rcs="$(pwd)/rcs"

echo "Creating symlinks for to .config/"
for cfg in $configs; do
    for entry in "$cfg"/*; do
        ln -s $entry $CFG
    done
done

cd $(pwd)/rcs
files=$(ls -a | egrep '^\.\w+$')

echo "Creating symlinks for RC files to ~/"
for file in $files; do
    src=$(pwd)/$file
    ln -s $src ~/
done
