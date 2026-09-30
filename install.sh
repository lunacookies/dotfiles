#!/bin/dash

link_config() {
	rm_if_exists "$2"
	if [ -e "$2" ]; then
		rm -r "$2"
	fi

	parent_dir=$(dirname "$2")
	mkdir -p "$parent_dir"

	ln -sf "$PWD/$1" "$2"
}

link_config fd "$HOME/.config/fd"
link_config git "$HOME/.config/git"
link_config ssh/config "$HOME/.ssh/config"
link_config vim "$HOME/.config/vim"
link_config zprofile "$HOME/.zprofile"
link_config zshrc "$HOME/.zshrc"

eval "$(/opt/homebrew/bin/brew shellenv)"
brew update
brew bundle --verbose
brew upgrade
brew bundle cleanup

yarn global add http-server
yarn global add prettier

touch "$HOME/.hushlogin"
