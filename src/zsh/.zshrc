alias vim=nvim
alias vi=nvim
alias g=git
alias c=cargo
alias b=brew
alias m="make -j10"
alias ls="ls -F"
alias fd="fd --color=never"

mkcd() {
	mkdir -p "$1"
	# shellcheck disable=SC2164
	cd "$1"
}

bindkey -e # emacs key bindings
WORDCHARS="${WORDCHARS/\/}" # consider slash a word boundary

# completion
autoload compinit && compinit
zstyle ':completion:*' menu select # highlight selected match
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z-_}={A-Za-z_-}' # case and -/_ insensitive

PROMPT=$'$ '
