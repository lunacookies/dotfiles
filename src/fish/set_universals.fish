set -U fish_greeting ""

set -U fish_color_command brblue
set -U fish_color_keyword brblue
set -U fish_color_operator brblue
set -U fish_color_redirection white
set -U fish_color_param white
set -U fish_color_end brblue
set -U fish_color_quote brgreen
set -U fish_color_escape green
set -U fish_color_comment brblack
set -U fish_color_error --underline red
set -U fish_color_autosuggestion brblack

abbr --add c cargo
abbr --add g git
abbr --add vim nvim
abbr --add b brew
abbr --add bi brew install
abbr --add bu brew uninstall
abbr --add bz brew uninstall --zap
