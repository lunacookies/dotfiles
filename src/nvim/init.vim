set breakindent
set clipboard^=unnamed
set colorcolumn=+1
set cursorline
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep
set guicursor=
set ignorecase
set inccommand=split
set linebreak
set list
set mousescroll=ver:1,hor:1
set numberwidth=5
set scrolloff=1
set smartcase
set smoothscroll
set splitbelow
set splitright

let &statusline = " %f %r%m%y%=%4l/%-4L %4c %4v "

let &listchars = "tab:  ,nbsp:•,trail:•"
let &showbreak = "››› "

" Plugins

let g:lion_squeeze_spaces = 1

let g:rustfmt_autosave = 1

let g:mucomplete#chains = {
			\ "vim": ["cmd", "c-n"],
			\ "default": ["omni", "c-n"]
			\ }

let g:c_no_curly_error = 1
let g:c_syntax_for_h = 1
let g:cpp_simple_highlight = 1

let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

let g:is_posix = 1

" Mappings

let g:fzf_layout = { "down": "~40%" }

inoremap (<CR> (<CR>)<Esc>O
inoremap {<CR> {<CR>}<Esc>O

nnoremap <expr> k v:count == 0 ? "gk" : "k"
nnoremap <expr> j v:count == 0 ? "gj" : "j"

vnoremap < <gv
vnoremap > >gv

nnoremap ,f :Files<CR>
nnoremap ,g :Rg<CR>
nnoremap ,b :Buffers<CR>
nnoremap ,h :Helptags<CR>

nnoremap ,s :split<CR>
nnoremap ,v :vsplit<CR>
nnoremap ,t :tabnew<CR>
nnoremap ,c :close<CR>
nnoremap ,o :only<CR>
nnoremap ,G :silent grep ''<Left>

nnoremap <Space><Space> :'{,'}s/\<<C-r>=expand("<cword>")<CR>\>//g<Left><Left>
nnoremap <Space>%       :%s/\<<C-r>=expand("<cword>")<CR>\>//g<Left><Left>

" Commands

command -nargs=1 Tabs set tabstop=<args> softtabstop=0 shiftwidth=<args> noexpandtab
command -nargs=1 Spaces set tabstop=8 softtabstop=0 shiftwidth=<args> expandtab

" Autocmds

function! SourcePersonalVimrc()
	let l:path = getcwd() . "/.personalvimrc"
	if filereadable(l:path)
		execute "source " . l:path
	endif
endfunction

augroup vimrc
	autocmd!

	autocmd BufRead * call SourcePersonalVimrc()
	autocmd BufReadPost * if &textwidth == 0 | setlocal textwidth=80 | endif

	autocmd TextYankPost * lua vim.highlight.on_yank({higroup="IncSearch", timeout=250})

	autocmd BufWritePost *.html,*.css,*.scss,*.md,*.js execute "silent! !yarn run prettier -w %" | redraw!
	autocmd BufNewFile,BufRead *.html,*.css,*.scss,*.js setlocal tabstop=8 softtabstop=2 shiftwidth=2 expandtab
	autocmd BufNewFile,BufRead *.css,*.scss setlocal iskeyword+=-

	autocmd BufWritePost *.go execute "silent! !go fmt" | redraw!

	autocmd FileType c,cpp,objc,metal setlocal commentstring=//%s
augroup END

"
" Color scheme
"

set termguicolors
colorscheme apparition
