if exists("current_compiler")
	finish
endif
let current_compiler = "shellcheck"
CompilerSet makeprg=shellcheck\ --format=gcc\ %
