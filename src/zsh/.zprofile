eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$HOME/Developer/dotfiles/bin:$HOME/.cargo/bin:$PATH"
export CDPATH=".:$HOME/Developer:$HOME"

export VISUAL="nvim"
export EDITOR="nvim"

export CLICOLOR="1"
export FZF_DEFAULT_COMMAND="fd --hidden"
export FZF_DEFAULT_OPTS="--no-bold --color=fg+:#c2c2b0,bg+:#555555,hl:#d6e770:bold:reverse,hl+:#d6e770:bold:reverse,prompt:#90b0d1,pointer:#c2c2b0,marker:#c2c2b0,header:#90b0d1,info:#707670,spinner:#707670"
export MANPAGER="nvim +Man!"
export MANWIDTH="72"
export RIPGREP_CONFIG_PATH="$HOME/Developer/dotfiles/src/rg/config"

# This disables terminal flow control (whatever that is)
# which frees up C-s and C-q for keybindings.
# We want this because C-s defaults to
# going forward in incremental history search.
stty -ixon
