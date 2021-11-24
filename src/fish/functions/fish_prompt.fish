function fish_prompt
    # set the current directory
    # as the title of the current tmux window
    tmux rename-window (basename (prompt_pwd))

    printf "\n"

    if test -z $SSH_TTY
    else
        set_color --bold red
        printf "%s@%s " (whoami) (hostname)
        set_color normal
    end

    set_color brblack
    printf "%s " (prompt_pwd)

    if set branch (git rev-parse --abbrev-ref HEAD 2> /dev/null)
        set_color green
        printf "$branch "
    end

    printf "\n"

    set_color normal
    printf "λ "
end
