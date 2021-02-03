#!/usr/bin/env bash

function install_rust_completions() {
    rustup completions zsh > /usr/local/share/zsh/site-functions/_rustup
    rustup completions zsh cargo > /usr/local/share/zsh/site-functions/_cargo
}

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

function link_desktop_to_downloads() {
    if [ -d "$HOME/Downloads" ] && [ ! -L "$HOME/Downloads" ]; then
        mv "$HOME/Downloads/"* "$HOME/Desktop"
        sudo rm -rf "$HOME/Downloads"

        ln -s "$HOME/Desktop" "$HOME/Downloads"
    fi
}

function hide_login_message() {
    touch "$HOME/.hushlogin"
}

install_rust_completions &
link_config src "$HOME/.config" &
link_config src/zsh/init.zsh "$HOME/.zshrc" &
link_config src/code/keybindings.json "$HOME/Library/Application Support/Code/User/keybindings.json" &
link_config src/code/settings.json "$HOME/Library/Application Support/Code/User/settings.json" &
link_desktop_to_downloads &
hide_login_message &

wait
