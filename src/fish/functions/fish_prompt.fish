function fish_prompt
	set -l prompt_status $status

	set -l bracket_color brblack
	set -l status_color brred
	set -l pwd_color brcyan
	set -l git_branch_color brgreen
	set -l git_status_color bryellow

	printf "%s[%s" (set_color $bracket_color) (set_color normal)

	if test $prompt_status != 0
		printf "%s%s%s " (set_color $status_color) $prompt_status (set_color normal)
	end

	printf "%s%s%s" (set_color $pwd_color) (prompt_pwd) (set_color normal)

	if git rev-parse --is-inside-work-tree &> /dev/null
		set -l git_branch ( \
			git symbolic-ref --quiet --short HEAD || \
			git describe --tags --exact-match HEAD 2> /dev/null || \
			git rev-parse --short HEAD
		)
		printf  " %s%s%s" (set_color $git_branch_color) $git_branch (set_color normal)

		set -l git_status

		# dirty
		if not git diff-files --no-ext-diff --quiet
			set git_status "$git_status*"
		end

		# staged
		if not git diff-index --cached --no-ext-diff --quiet HEAD 2> /dev/null
			set git_status "$git_status+"
		end

		# stash
		if git rev-parse --quiet --verify refs/stash > /dev/null
			set git_status "$git_status^"
		end

		# untracked
		set -l untracked_files (git ls-files \
			# only list untracked files and directories
			--others \
			# don’t list .gitignored files and directories
			--exclude-standard \
			# don’t list empty directories
			# (since git doesn’t care about untracked empty directories)
			--directory --no-empty-directory \
		)

		# only print if we had no untracked files output
		if test -n "$untracked_files"
			set git_status "$git_status?"
		end

		set -l unpushed_commits (git rev-list '@{u}..HEAD' 2> /dev/null)
		if test -n "$unpushed_commits"
			set git_status "$git_status↑"
		end

		set -l unpulled_commits (git rev-list 'HEAD..@{u}' 2> /dev/null)
		if test -n "$unpulled_commits"
			set git_status "$git_status↓"
		end

		printf  "%s%s%s" (set_color $git_status_color) $git_status (set_color normal)
	end

	printf "%s]%s " (set_color $bracket_color) (set_color normal)
end
