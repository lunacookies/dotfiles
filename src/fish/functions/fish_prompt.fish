function fish_prompt
    set pwd (prompt_pwd)

    if test (hostname) = "code-mbp"
        # set the current directory
        # as the title of the current tmux window
        tmux rename-window $pwd
    end

    printf "\n"

    printf $pwd

    set_color cyan
    fish_vcs_prompt
    set_color normal

    printf " λ "

    printf "\e[6 q" # use line-shaped cursor
end
