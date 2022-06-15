set -U fish_greeting ""

set -U fish_color_command --bold white
set -U fish_color_keyword white
set -U fish_color_operator white
set -U fish_color_redirection white
set -U fish_color_param white
set -U fish_color_end white
set -U fish_color_quote white
set -U fish_color_escape white
set -U fish_color_comment brblack
set -U fish_color_error --underline red
set -U fish_color_autosuggestion brblack

abbr --add c cargo
abbr --add g git
abbr --add vim nvim
abbr --add ls exa
abbr --add tree exa --tree
abbr --add b brew
abbr --add bi brew install
abbr --add bu brew uninstall
abbr --add bz brew uninstall --zap
