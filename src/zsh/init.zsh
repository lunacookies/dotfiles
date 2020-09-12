#
# Completion
#

# Load completion
autoload -U compinit
compinit -u
zmodload -i zsh/complist

# Make completion case-insensitive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Highlight selected completion match.
zstyle ':completion:*:*:*:*:*' menu select

#
# History
#

# Keep much more history
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

#
# Environment Variables
#

export PATH="$HOME/.cargo/bin:$PATH"

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

#
# Prompt
#

# Use bold for commands when typing them in, thereby making them stand out from
# the rest of the terminal output.
zle_highlight=(default:bold)

export PROMPT='%F{cyan}%%%f '
export RPROMPT='%F{8}%~%f'
