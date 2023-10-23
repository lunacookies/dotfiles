set breakindent
set clipboard^=unnamed
set colorcolumn=+1
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep
set guicursor=
set ignorecase
set inccommand=split
set linebreak
set list
set numberwidth=5
set scrolloff=1
set smartcase
set splitbelow
set splitright

let &statusline = " %f %r%m%y%=%4l/%-4L %4c %4v "

let &listchars = "tab:  ,nbsp:•,trail:•"
let &showbreak = "››› "

" Plugins

let g:lion_squeeze_spaces = 1

let g:rustfmt_autosave = 1

let g:mucomplete#chains = {
			\ 'vim': ['cmd', 'c-n'],
			\ 'default': ['omni', 'c-n']
			\ }

let g:c_syntax_for_h = 1
let g:cpp_simple_highlight = 1

" Mappings

let g:fzf_layout = { 'down': '~40%' }

inoremap (<CR> (<CR>)<Esc>O
inoremap {<CR> {<CR>}<Esc>O

nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'

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
nnoremap ,G :silent grep<Space>''<Left>

nnoremap <Space><Space> :'{,'}s/\<<C-r>=expand('<cword>')<CR>\>//g<Left><Left>
nnoremap <Space>%       :%s/\<<C-r>=expand('<cword>')<CR>\>//g<Left><Left>

" Autocmds

function! SourcePersonalVimrc()
	let l:path = expand("%:p:h") . "/.personalvimrc"
	if filereadable(l:path)
		execute "source " . l:path
	endif
endfunction

augroup vimrc
	autocmd!

	autocmd BufRead * call SourcePersonalVimrc()
	autocmd BufReadPost * if &textwidth == 0 | setlocal textwidth=80 | endif

	autocmd BufWritePost *.html,*.css,*.scss,*.md,*.js execute "silent! !yarn run prettier -w %" | redraw!
	autocmd BufNewFile,BufRead *.html,*.css,*.scss,*.js setlocal tabstop=8 softtabstop=2 shiftwidth=2 expandtab

	autocmd BufWritePost *.c,*.h,*.m,*.metal,*.zig silent make! | redraw!

	autocmd FileType c,cpp,objc,metal setlocal commentstring=//%s
augroup END

"
" Color scheme
"

set termguicolors
colorscheme silene
