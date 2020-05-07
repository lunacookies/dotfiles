"
" Options
"

" If you’re unsure what a particular option does, put the cursor on it and
" press K.

set clipboard^=unnamed
set colorcolumn=+1
set completeopt+=menuone,noselect
set cursorline
set hidden
set ignorecase
set linebreak
set mouse=a
set number
set numberwidth=4
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

set termguicolors
colorscheme xcodedark
