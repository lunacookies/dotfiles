compiler shellcheck
augroup sh-ftplugin
	autocmd! * <buffer>
	autocmd BufWritePost <buffer> silent make! | redraw!
augroup END
