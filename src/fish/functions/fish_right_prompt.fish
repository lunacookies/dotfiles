function fish_right_prompt
    set_color brblack
    printf (prompt_pwd)

    if set branch (git rev-parse --abbrev-ref HEAD 2> /dev/null)
        printf " $branch"
    end
end
