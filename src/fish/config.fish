fish_add_path /usr/local/opt/coreutils/libexec/gnubin
fish_add_path /usr/local/opt/llvm/bin
fish_add_path ~/.cargo/bin

set -gx CDPATH . .. ~/Documents/Code ~/Documents/School/ ~/Documents $HOME

if test (hostname) = code-mbp
    set -gx VISUAL nvim
    set -gx EDITOR nvim
else
    set -gx VISUAL vim
    set -gx EDITOR vim
end

set -gx HOMEBREW_CASK_OPTS --appdir=~/Applications

set -gx FZF_DEFAULT_COMMAND fd

set -gx CARGO_TARGET_DIR ~/.cache/cargo-target
if test ! -e "$CARGO_TARGET_DIR"
    mkdir -p "$CARGO_TARGET_DIR"
end

set -gx RUSTFLAGS "--codegen target-cpu=native --warn unreachable-pub --warn rust-2018-idioms"

# Fix issue with ncurses GPG pinentry not connecting to TTY properly.
set -gx GPG_TTY (tty)
