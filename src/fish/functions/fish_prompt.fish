function fish_prompt
    # set the current directory
    # as the title of the current tmux window
    tmux rename-window (basename (prompt_pwd))

    if test -z $SSH_TTY
    else
        set_color --bold red
        printf "%s@%s " (whoami) (hostname)
    end

    set_color normal
    printf "λ "
end
