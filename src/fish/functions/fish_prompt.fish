function fish_prompt
    printf (set_color black)
    for i in (seq $COLUMNS)
        echo -n "─"
    end
    printf "\n"

    printf (set_color green)
    printf (prompt_pwd)

    printf (set_color brblack)
    printf (fish_vcs_prompt)

    printf (set_color blue)
    printf " → "
end

