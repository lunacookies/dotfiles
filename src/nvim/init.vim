set clipboard^=unnamed
set ignorecase
set inccommand=split
set linebreak
set list
set listchars=tab:\ \ ,nbsp:•,trail:•
set numberwidth=5
set smartcase
set splitbelow
set splitright

let &statusline = " %f %r%m%=%3l %3c/%-3v "

" Plugins

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

set runtimepath+=/opt/homebrew/opt/fzf
let g:fzf_layout = { 'window': {
		\ 	'width': 1.0,
		\ 	'height': 0.4,
		\ 	'yoffset': 1.0,
		\ } }

let g:rustfmt_autosave = 1

let g:mucomplete#chains = {
			\ 'vim': ['cmd', 'c-n'],
			\ 'default': ['omni', 'c-n']
			\ }

let g:c_syntax_for_h = 1
let g:cpp_simple_highlight = 1

" Mappings

nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'

vnoremap < <gv
vnoremap > >gv

nnoremap ,b :Buffers<CR>
nnoremap ,c :close<CR>
nnoremap ,f :Files<CR>
nnoremap ,g :Rg<CR>
nnoremap ,o :only<CR>
nnoremap ,s :split<CR>
nnoremap ,v :vsplit<CR>

" Autocmds

augroup vimrc
	autocmd!

	autocmd BufWritePost *.html,*.css,*.scss,*.md silent! !prettier -w %
	autocmd BufRead *.html,*.css,*.scss,*.md set sts=2 sw=2 et

	autocmd ColorScheme * hi link Searchlight IncSearch
	autocmd ColorScheme lucius hi Search ctermfg=236 ctermbg=230 cterm=NONE
augroup END

" Color scheme

colorscheme lucius
LuciusDarkHighContrast
