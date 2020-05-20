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

# Use bold for commands when typing them in, thereby making them stand out of
# the rest of the terminal output.
zle_highlight=(default:bold)

# A newline followed by an arrow.
export PROMPT='
%F{cyan}→%f '

# Put the path on the right-aligned prompt so that it’s always visible without
# being intrusive.
export RPROMPT='%F{8}%~%f'
