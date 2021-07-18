function fish_prompt
    set pwd (prompt_pwd)

    # set the current directory
    # as the title of the current tmux window
    tmux rename-window $pwd

    printf "\n"
    printf "%s λ " $pwd

    printf "\e[6 q" # use line-shaped cursor
end
