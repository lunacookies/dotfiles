# vim: filetype=zsh

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$HOME/Developer/dotfiles/bin:$HOME/.cargo/bin:$PATH"
export CDPATH=".:$HOME/Developer:$HOME"
export GOPATH="$HOME/.local/share/go"

export EDITOR="mvim --nofork"
export VISUAL="$EDITOR"

export SHELL_SESSIONS_DISABLE=1
export CLICOLOR=1
export FZF_DEFAULT_COMMAND="fd --hidden"
export FZF_DEFAULT_OPTS="--no-bold --color=fg+:#c2c2b0,bg+:#555555,hl:#d6e770:bold:reverse,hl+:#d6e770:bold:reverse,prompt:#90b0d1,pointer:#c2c2b0,marker:#c2c2b0,header:#90b0d1,info:#707670,spinner:#707670"
export MANWIDTH="72"
export MANPAGER="mvim +MANPAGER --not-a-term -c 'set columns=$(($MANWIDTH + 10))' -"
export RIPGREP_CONFIG_PATH="$HOME/Developer/dotfiles/rgrc"
