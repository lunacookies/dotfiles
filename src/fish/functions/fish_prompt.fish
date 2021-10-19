function fish_prompt
    set pwd (prompt_pwd)

    # set the current directory
    # as the title of the current tmux window
    tmux rename-window $pwd

    if test -z $SSH_TTY
    else
        set_color --bold red
        printf "%s@%s " (whoami) (hostname)
    end

    set_color normal
    printf "\$ "
end
