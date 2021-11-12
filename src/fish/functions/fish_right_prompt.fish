function fish_right_prompt
    set_color normal
    set_color brblack
    printf (prompt_pwd)

    if set branch (git rev-parse --abbrev-ref HEAD 2> /dev/null)
	set_color green
        printf " $branch"
    end

    set_color normal
end
