function fish_prompt
	set -l prompt_status $status

	set -l bracket_color brblack
	set -l status_color brred
	set -l pwd_color brcyan
	set -l git_color brgreen

	printf "%s[%s" (set_color $bracket_color) (set_color normal)

	if test $prompt_status != 0
		printf "%s%s%s " (set_color $status_color) $prompt_status (set_color normal)
	end

	printf "%s%s%s" (set_color $pwd_color) (prompt_pwd) (set_color normal)

	if git rev-parse --is-inside-work-tree &> /dev/null
		set -l git_info ( \
			git symbolic-ref --quiet --short HEAD || \
			git describe --tags --exact-match HEAD || \
			git rev-parse --short HEAD
		)

		# dirty
		if not git diff-files --no-ext-diff --quiet
			set git_info "$git_info*"
		end

		# staged
		if not git diff-index --cached --no-ext-diff --quiet HEAD 2> /dev/null
			set git_info "$git_info+"
		end

		# stash
		if git rev-parse --quiet --verify refs/stash > /dev/null
			set git_info "$git_info^"
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
			set git_info "$git_info?"
		end

		set -l unpushed_commits (git rev-list '@{u}..HEAD')
		if test -n "$unpushed_commits"
			set git_info "$git_info↑"
		end

		set -l unpulled_commits (git rev-list 'HEAD..@{u}')
		if test -n "$unpulled_commits"
			set git_info "$git_info↓"
		end

		printf  " %s%s%s" (set_color $git_color) $git_info (set_color normal)
	end

	printf "%s]%s " (set_color $bracket_color) (set_color normal)
end
