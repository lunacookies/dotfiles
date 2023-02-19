eval (/opt/homebrew/bin/brew shellenv)
fish_add_path ~/.cargo/bin

set -gx CDPATH . .. ~/Code $HOME

set -gx VISUAL nvim
set -gx EDITOR nvim

set -gx FZF_DEFAULT_COMMAND fd

set -gx RIPGREP_CONFIG_PATH "$HOME/.config/rg/rgrc"

# open manpages in Nvim
set -gx MANPAGER "nvim +Man!"

# wrap manpage to a narrower width for ease of reading
set -gx MANWIDTH 72

rm ~/.config/fish/fish_variables
set -g fish_greeting ""
set -g fish_color_command brblue
set -g fish_color_keyword brblue
set -g fish_color_operator brblue
set -g fish_color_redirection white
set -g fish_color_param white
set -g fish_color_end brblue
set -g fish_color_quote brgreen
set -g fish_color_escape green
set -g fish_color_comment brblack
set -g fish_color_error --underline red
set -g fish_color_autosuggestion brblack

abbr --add c cargo
abbr --add cargo echo "use c!"

abbr --add g git
abbr --add git echo "use g!"

abbr --add vi nvim
abbr --add nvim echo "use vi!"
abbr --add vim echo "use vi!"

abbr --add b brew
abbr --add brew echo "use b!"

abbr --add m make -j10
abbr --add make echo "use m!"
