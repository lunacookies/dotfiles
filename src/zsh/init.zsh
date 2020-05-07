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
# Aliases
#

alias vim="$VISUAL"

#
# Prompt
#

# Use bold for commands when typing them in, thereby making them stand out of
# the rest of the terminal output
zle_highlight=(default:bold)

export PROMPT='
%F{cyan}%~
%B→%b%f '
