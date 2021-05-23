function fish_prompt
    set command_status $status

    printf (set_color brblack)
    printf (prompt_pwd)

    printf (set_color green)
    printf (fish_vcs_prompt)

    if test $command_status = 0
        printf (set_color normal)
    else
        printf (set_color red)
    end

    printf "\$ "
end

