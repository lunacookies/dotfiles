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

install_js_packages() {
	yarn global add http-server
	yarn global add prettier
}

link_config src/bash/bash_profile "$HOME/.bash_profile"
link_config src/bash/bashrc "$HOME/.bashrc"
link_config src/code/keybindings.json "$HOME/Library/Application Support/Code/User/keybindings.json"
link_config src/code/settings.json "$HOME/Library/Application Support/Code/User/settings.json"
link_config src/git "$HOME/.config/git"
link_config src/kitty "$HOME/.config/kitty"
link_config src/nvim "$HOME/.config/nvim"
link_config src/rg "$HOME/.config/rg"
link_config src/sh/profile "$HOME/.profile"
link_config src/sh/shrc "$HOME/.shrc"
link_config src/ssh/config "$HOME/.ssh/config"
link_config src/tmux "$HOME/.config/tmux"
link_config src/zsh/zprofile "$HOME/.zprofile"
link_config src/zsh/zshrc "$HOME/.zshrc"

eval "$(/opt/homebrew/bin/brew shellenv)"
brew_install
brew_cleanup
cleanup_brewfile_lock
install_js_packages
hide_login_message
