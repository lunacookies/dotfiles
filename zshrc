# Aliases

alias vim="open -a MacVim"
alias vi="open -a MacVim"
alias g=git
alias c=cargo
alias b=brew
alias ls="ls -F"
alias fd="fd --color=never"

# Functions

mkcd() {
	mkdir -p "$1"
	cd "$1"
}

cdsdk() {
	cd "$(xcrun --show-sdk-path)"
}

# Editing

bindkey -e                  # Emacs key bindings.
WORDCHARS="${WORDCHARS/\/}" # Consider slash a word boundary.

# History

HISTSIZE=200000
SAVEHIST=100000

setopt INC_APPEND_HISTORY_TIME # Save commands to the history immediately after they’ve finished running.
setopt EXTENDED_HISTORY        # Save timestamps and command durations.
setopt HIST_IGNORE_DUPS        # Ignore consecutive duplicates.
setopt HIST_EXPIRE_DUPS_FIRST  # If the history needs to be trimmed, delete the oldest duplicates first.
setopt HIST_VERIFY             # Confirm before running commands that use history expansion.

# Completion

autoload -U compinit && compinit

zstyle ':completion:*' menu select                               # Highlight selected match.
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z-_}={A-Za-z_-}' # Make completion case and -/_ insensitive.

# Prompt

PROMPT=$'%% '
