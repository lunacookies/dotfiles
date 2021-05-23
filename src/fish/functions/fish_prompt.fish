function fish_prompt
    printf "\n"

    printf (set_color green)
    printf (prompt_pwd)

    printf (set_color brblack)
    printf (fish_vcs_prompt)

    printf (set_color brgreen)
    printf "\n→ "
end

