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

# Use bright white for commands when typing them in, thereby making them stand
# out from the rest of the terminal output.
zle_highlight=(default:fg=15)

# A newline followed by an arrow.
export PROMPT='
%F{cyan}→%f '

# Put the path on the right-aligned prompt so that it’s always visible without
# being intrusive.
export RPROMPT='%F{8}%~%f'
