#!/usr/bin/env bash

xdg_dir="$HOME/.config"

rm_if_exists "$xdg_dir"
ln -s "$PWD/src"  "$xdg_dir"

function rm_if_exists() {
    if [ -e "$1" ]; then
        rm -r "$1"
    fi
}
