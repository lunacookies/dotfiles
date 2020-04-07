"
" Options
"

" If you’re unsure what a particular option does, put the cursor on it and
" press K.

set clipboard^=unnamed
set colorcolumn=+1
set cursorline
set ignorecase
set mouse=a
set number
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

" Automatically rust rustfmt upon save.
let g:rustfmt_autosave = 1

"
" Mappings
"

nnoremap ,b :Buffers
nnoremap ,f :Files
nnoremap ,g :Rg

"
" Colourscheme
"

set termguicolors
colorscheme xcodedark
