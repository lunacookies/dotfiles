#!/bin/sh

rm_if_exists() {
	if [ -e "$1" ]; then
		rm -r "$1"
	fi
}

link_config() {
	rm_if_exists "$2"

	parent_dir=$(dirname "$2")
	mkdir -p "$parent_dir"

	ln -sf "$PWD/$1" "$2"
}

hide_login_message() {
	touch "$HOME/.hushlogin"
}

create_swapfiles_dir() {
	mkdir -p "$HOME/.vim/swapfiles"
}

brew_install() {
	brew bundle --verbose
}

brew_cleanup() {
	brew bundle cleanup

	while true; do
		printf "\n\nDo you wish to continue? [y/n] "
		read -r yn
		case $yn in
			[Yy]* ) brew bundle cleanup --force; break;;
			[Nn]* ) break;;
			* ) echo "Please answer yes or no.";;
		esac
	done
}

cleanup_brewfile_lock() {
	rm "Brewfile.lock.json"
}

eval "$(/opt/homebrew/bin/brew shellenv)"

link_config src "$HOME/.config"
link_config src/sh/profile "$HOME/.profile"
link_config src/sh/shrc "$HOME/.shrc"
link_config src/zsh/zprofile "$HOME/.zprofile"
link_config src/zsh/zshrc "$HOME/.zshrc"
link_config src/bash/bashrc "$HOME/.bashrc"
link_config src/bash/bash_profile "$HOME/.bash_profile"
link_config src/vim "$HOME/.vim"
link_config src/ssh/config "$HOME/.ssh/config"
hide_login_message
create_swapfiles_dir
brew_install
brew_cleanup
cleanup_brewfile_lock
