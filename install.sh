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

function generate_brewfile() {
    cp "Brewfile-Common" "Brewfile"

    case $(hostname) in
        "code-mbp" ) cat "Brewfile-Code" >> "Brewfile";;
        "work-mbp" ) cat "Brewfile-Work" >> "Brewfile";;
    esac
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

function cleanup_brewfile() {
    rm "Brewfile"
    rm "Brewfile.lock.json"
}

ia_writer_files="$HOME/Library/Containers/pro.writer.mac/Data/Library/Application Support/iA Writer"

function is_ia_writer_template_missing() {
    [ ! -e "$ia_writer_files/Templates/arzg.iatemplate" ]
}

function install_ia_writer_template() {
    if is_ia_writer_template_missing; then
        mkdir -p "$ia_writer_files"
        rm_if_exists "$ia_writer_files/Templates"
        git clone \
            --quiet \
            https://github.com/arzg/ia-writer-templates \
            "$ia_writer_files/Templates"
    else
        old_pwd=$(pwd)
        cd "$ia_writer_files/Templates"
        git pull
        cd "$old_pwd"
    fi
}

if [ $(hostname) = "code-mbp" ]; then
    install_rust_completions

    link_config \
        src/code/keybindings.json \
        "$HOME/Library/Application Support/Code/User/keybindings.json"

    link_config \
        src/code/settings.json \
        "$HOME/Library/Application Support/Code/User/settings.json"
fi

link_config src "$HOME/.config"
link_config src/zsh/init.zsh "$HOME/.zshrc"
link_desktop_to_downloads
hide_login_message
generate_brewfile
brew_install
brew_cleanup
cleanup_brewfile
install_ia_writer_template
bash src/macos/defaults
