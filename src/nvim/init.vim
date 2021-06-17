"
" Options
"

" If you’re unsure what a particular option does, put the cursor on it and
" press K.

set clipboard^=unnamed
set colorcolumn=+1
set completeopt+=menuone,noselect
set hidden
set ignorecase
set inccommand=split
set linebreak
set mouse=a
set numberwidth=5
set shortmess=lmnrwxoOtTWIcF
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

" Automatically rust rustfmt upon save.
let g:rustfmt_autosave = 1

" MUcomplete

" Enable autocomplete.
let g:mucomplete#enable_auto_at_startup = 1

" Allow completing from sources as specified by &complete.
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

"
" Colourscheme
"

if system('hostname') ==# "code-mbp\n"
    set termguicolors
endif

if system('defaults read -g AppleInterfaceStyle') ==# "Dark\n"
    colorscheme one
else
    colorscheme xcodelight
endif
