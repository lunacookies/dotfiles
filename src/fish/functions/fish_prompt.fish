function fish_prompt
    set_color brblack
    printf "%s " (basename $PWD)
    set_color blue
    printf "── "
    set_color normal
end
