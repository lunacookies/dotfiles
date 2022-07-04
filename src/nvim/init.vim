set clipboard^=unnamed
set colorcolumn=+1
set completeopt+=menuone,noselect
set hidden
set ignorecase
set inccommand=split
set linebreak
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set numberwidth=5
set smartcase
set splitbelow
set splitright

let &statusline = " %f %w%r%m%=%l:%-6c "

" Plugin config

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

set runtimepath+=/opt/homebrew/opt/fzf

let g:rustfmt_autosave = 1

let g:mucomplete#chains = {
			\ 'vim': ['path', 'cmd', 'c-n'],
			\ 'default': ['path', 'omni', 'c-n', 'dict', 'uspl']
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
	autocmd BufWritePost *.html,*.scss,*.md silent! !prettier -w %
	autocmd BufRead *.html,*.scss,*.md set sts=2 sw=2 et
augroup END

" Colour scheme

highlight Statement ctermfg=darkmagenta
highlight Comment ctermfg=white cterm=bold
highlight Special ctermfg=darkcyan
highlight Identifier ctermfg=NONE cterm=NONE
highlight Type ctermfg=cyan
highlight Function ctermfg=blue
highlight PreProc ctermfg=green
highlight Constant ctermfg=green
highlight Visual ctermfg=white ctermbg=8 cterm=NONE
highlight StatusLine ctermfg=white ctermbg=8 cterm=NONE
highlight StatusLineNC ctermfg=8 ctermbg=black cterm=NONE
highlight VertSplit ctermfg=black ctermbg=black cterm=NONE
highlight ModeMsg ctermfg=8 cterm=NONE
highlight ColorColumn ctermbg=black
highlight LineNr ctermfg=8 ctermbg=black
highlight CursorLineNr ctermfg=NONE ctermbg=black cterm=NONE
highlight CursorLine ctermbg=black cterm=NONE
highlight NonText ctermfg=8
highlight Search ctermfg=white ctermbg=darkcyan cterm=NONE
highlight IncSearch ctermfg=black ctermbg=yellow cterm=NONE
highlight Pmenu ctermfg=white ctermbg=black cterm=NONE
highlight PmenuSel ctermfg=white ctermbg=8 cterm=NONE
highlight PmenuSbar ctermfg=black ctermbg=black
highlight PmenuThumb ctermfg=white ctermbg=white
highlight diffAdded ctermfg=green
highlight diffRemoved ctermfg=red
