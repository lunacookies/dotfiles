eval (/opt/homebrew/bin/brew shellenv)
fish_add_path /opt/homebrew/opt/llvm/bin
fish_add_path ~/.cargo/bin

set -gx CDPATH . .. ~/Code $HOME

set -gx VISUAL nvim
set -gx EDITOR nvim

set -gx FZF_DEFAULT_COMMAND fd

set -gx CARGO_TARGET_DIR ~/.cache/cargo-target
if test ! -e "$CARGO_TARGET_DIR"
    mkdir -p "$CARGO_TARGET_DIR"
end

set -gx RUSTFLAGS "--warn unreachable-pub --warn rust-2018-idioms"

# open manpages in Nvim
set -gx MANPAGER "nvim +Man!"
