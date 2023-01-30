#!/usr/bin/env bash

function rm_if_exists() {
    if [ -e "$1" ]; then
        rm -r "$1"
    fi
}

function link_config() {
    rm_if_exists "$2"

    parent_dir=$(dirname "$2")
    mkdir -p "$parent_dir"

    ln -sf "$PWD/$1" "$2"
}

function hide_login_message() {
    touch "$HOME/.hushlogin"
}

function brew_install() {
    brew bundle --verbose
}

function brew_cleanup() {
    brew bundle cleanup

    while true; do
        printf "\n\nDo you wish to continue? [y/n] "
        read yn
        case $yn in
            [Yy]* ) brew bundle cleanup --force; break;;
            [Nn]* ) break;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}

function cleanup_brewfile_lock() {
    rm "Brewfile.lock.json"
}

eval "$(/opt/homebrew/bin/brew shellenv)"

link_config src "$HOME/.config"
hide_login_message
brew_install
brew_cleanup
cleanup_brewfile_lock
fish src/fish/set_universals.fish
