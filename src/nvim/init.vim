set clipboard^=unnamed
set ignorecase
set inccommand=split
set linebreak
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:•,trail:•
set numberwidth=5
set smartcase
set splitbelow
set splitright

let &statusline = " %f %r%m%=%l:%-2c "

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
augroup END

" Color scheme

set termguicolors
colorscheme sorcerer
hi link Searchlight IncSearch
