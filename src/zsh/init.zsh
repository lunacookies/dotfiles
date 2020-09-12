#
# Path
#

export PATH="$HOME/.cargo/bin:$PATH"

#
# Environment Variables
#

# Use Neovim for command-line editing.
export VISUAL='nvim'
export EDITOR='nvim'

# Allow cd-ing into my source and school folders from anywhere, as well as into
# any directory in the parent directory.
export CDPATH=".:..:$HOME/Documents/Drive/src:$HOME/Documents/School/2020"

# Tell Homebrew to install casks in ~/Applications.
export HOMEBREW_CASK_OPTS="--appdir=$HOME/Applications"

# Use fd in fzf
export FZF_DEFAULT_COMMAND="fd"

# Store all compilation artefacts from Cargo in a single location to allow
# sharing dependencies between builds.
export CARGO_TARGET_DIR="$HOME/.cache/cargo-target"
[ ! -e "$CARGO_TARGET_DIR" ] && mkdir -p "$CARGO_TARGET_DIR"

#
# Options
#

# Use Emacs-style keybindings.
bindkey -e

#
# Aliases & functions
#

alias vim="$VISUAL"

trs() {
    mv $@ "$HOME/.Trash/"
}

#
# Prompt
#

# Use bold for commands when typing them in, thereby making them stand out from
# the rest of the terminal output.
zle_highlight=(default:bold)

# A newline followed by an arrow.
export PROMPT='
%F{green}→%f '

# Put the path on the right-aligned prompt so that it’s always visible without
# being intrusive.
export RPROMPT='%F{8}%~%f'
