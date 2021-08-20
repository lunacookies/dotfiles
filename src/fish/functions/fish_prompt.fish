function fish_prompt
    set pwd (prompt_pwd)

    if test (hostname) = "code-mbp"
        # set the current directory
        # as the title of the current tmux window
        tmux rename-window $pwd
    end

    if test -z $SSH_TTY
    else
        set_color brgreen
        printf "%s" (whoami)
        set_color normal
        printf "@"
        set_color green
        printf "%s " (hostname)
    end

    set_color brmagenta
    printf $pwd

    if set branch (git rev-parse --abbrev-ref HEAD 2> /dev/null)
        set_color magenta
        printf " $branch"
    end

    set_color normal
    printf " → "

    printf "\e[6 q" # use line-shaped cursor
end
