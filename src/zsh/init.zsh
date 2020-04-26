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

export PROMPT='%F{8}%~ →%f '
