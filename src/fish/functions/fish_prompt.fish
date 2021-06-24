function fish_prompt
    printf (prompt_pwd)

    printf (set_color cyan)
    printf (fish_vcs_prompt)

    printf (set_color reset)
    printf " λ "
end

