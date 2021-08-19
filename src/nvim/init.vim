"
" Options
"

set clipboard^=unnamed
set colorcolumn=+1
set completeopt+=menuone,noselect
set hidden
set ignorecase
set inccommand=split
set linebreak
set mouse=a
set numberwidth=5
set smartcase
set splitbelow
set splitright

"
" Plugin config
"

" EasyAlign

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" fzf

set runtimepath+=/usr/local/opt/fzf

" Rust

let g:rustfmt_autosave = 1

" MUcomplete

let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#chains = {
			\ 'vim': ['path', 'cmd', 'c-n'],
			\ 'default': ['path', 'omni', 'c-n', 'dict', 'uspl']
			\ }

"
" Mappings
"

nnoremap ,b :Buffers<CR>
nnoremap ,c :close<CR>
nnoremap ,f :Files<CR>
nnoremap ,g :Rg<CR>
nnoremap ,o :only<CR>
nnoremap ,s :split<CR>
nnoremap ,v :vsplit<CR>

"
" Colourscheme
"

if system('defaults read -g AppleInterfaceStyle') ==# "Dark\n"
    colorscheme delek
else
    colorscheme xcodelight
endif
