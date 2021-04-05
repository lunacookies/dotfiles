#
# Completion
#

# Load completion
autoload -U compinit
compinit -u
zmodload -i zsh/complist

# Make completion case-insensitive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Automatically correct completions
zstyle ':completion:*' completer _complete _ignored _correct _approximate

# Highlight selected completion match.
zstyle ':completion:*:*:*:*:*' menu select

#
# Options
#

# Use Emacs-style keybindings
bindkey -e

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

export PATH="$HOME/.cargo/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Use Neovim for command-line editing if on code machine.
if [ $(hostname) = "code-mbp" ]; then
    export VISUAL='nvim'
    export EDITOR='nvim'
else
    export VISUAL='vim'
    export EDITOR='vim'
fi

# Allow cd-ing into my code, school, documents and home folders from anywhere,
# as well as into any directory in the parent directory.
export CDPATH=".:..:$HOME/Documents/Code:$HOME/Documents/School/:$HOME/Documents:$HOME"

# Tell Homebrew to install casks in ~/Applications.
export HOMEBREW_CASK_OPTS="--appdir=$HOME/Applications"

# Use fd in fzf
export FZF_DEFAULT_COMMAND="fd"

# Store all compilation artefacts from Cargo in a single location to allow
# sharing dependencies between builds.
export CARGO_TARGET_DIR="$HOME/.cache/cargo-target"
[ ! -e "$CARGO_TARGET_DIR" ] && mkdir -p "$CARGO_TARGET_DIR"

# Enable optimisations specific for the CPU architecture we’re running on.
# Warn about `pub`s that cannot be reached from the crate root.
export RUSTFLAGS="--codegen target-cpu=native --warn unreachable-pub"

# Fix issue with ncurses GPG pinentry not connecting to TTY properly.
export GPG_TTY=$(tty)

#
# Aliases & functions
#

alias c="cargo"
alias g="git"
alias ls="exa --long"
alias vim="$VISUAL"
alias lbe="lb export > $HOME/Documents/School/Software/Logbook.md"

#
# Prompt
#

# Use bold for commands when typing them in, thereby making them stand out from
# the rest of the terminal output.
zle_highlight=(default:bold)

export PROMPT=$'
• '
export RPROMPT='%F{8}%~%f'
