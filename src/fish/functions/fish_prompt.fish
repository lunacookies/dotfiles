function fish_prompt
    set pwd (prompt_pwd)

    # set the current directory
    # as the title of the current tmux window
    tmux rename-window $pwd

    set_color brblack

    if test -z $SSH_TTY
    else
        printf "%s" (whoami)
        printf "@"
        printf "%s " (hostname)
    end

    printf $pwd

    if set branch (git rev-parse --abbrev-ref HEAD 2> /dev/null)
        printf " $branch"
    end

    printf " "
end
