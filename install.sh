#!/usr/bin/env bash

function rm_if_exists() {
    if [ -e "$1" ]; then
        rm -r "$1"
    fi
}

function link_config() {
    rm_if_exists "$2"
    ln -s "$PWD/$1" "$2"
}

link_config src "$HOME/.config"
link_config src/zsh/init.zsh "$HOME/.zshrc"
