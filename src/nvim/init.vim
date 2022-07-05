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

let &statusline = " %f %y%w%r%m%=%l:%-6c "

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

highlight Comment      ctermfg=15   ctermbg=NONE cterm=bold
highlight Constant     ctermfg=11   ctermbg=NONE cterm=NONE
highlight Number       ctermfg=3    ctermbg=NONE cterm=NONE
highlight String       ctermfg=10   ctermbg=NONE cterm=NONE
highlight Identifier   ctermfg=NONE ctermbg=NONE cterm=NONE
highlight Function     ctermfg=15   ctermbg=NONE cterm=NONE
highlight Statement    ctermfg=12   ctermbg=NONE cterm=NONE
highlight PreProc      ctermfg=14   ctermbg=NONE cterm=NONE
highlight Type         ctermfg=13   ctermbg=NONE cterm=NONE
highlight Special      ctermfg=2    ctermbg=NONE cterm=NONE
highlight Underlined   ctermfg=14   ctermbg=NONE cterm=underline
highlight Ignore       ctermfg=8    ctermbg=NONE cterm=NONE
highlight Error        ctermfg=1    ctermbg=0    cterm=underline
highlight Todo         ctermfg=0    ctermbg=13   cterm=NONE

highlight Visual       ctermfg=0    ctermbg=4    cterm=NONE
highlight Search       ctermfg=0    ctermbg=12   cterm=NONE
highlight IncSearch    ctermfg=0    ctermbg=4    cterm=NONE
highlight StatusLine   ctermfg=0    ctermbg=8    cterm=NONE
highlight StatusLineNC ctermfg=8    ctermbg=0    cterm=NONE
highlight VertSplit    ctermfg=0    ctermbg=0    cterm=NONE
highlight NonText      ctermfg=8    ctermbg=NONE cterm=NONE
highlight CursorLine   ctermfg=NONE ctermbg=0    cterm=NONE
highlight CursorColumn ctermfg=NONE ctermbg=0    cterm=NONE
highlight LineNr       ctermfg=8    ctermbg=NONE cterm=NONE
highlight CursorLineNr ctermfg=8    ctermbg=0    cterm=NONE
highlight Title        ctermfg=15   ctermbg=NONE cterm=NONE
highlight Pmenu        ctermfg=0    ctermbg=8    cterm=NONE
highlight PmenuSel     ctermfg=15   ctermbg=8    cterm=NONE
highlight PmenuSbar    ctermfg=8    ctermbg=8    cterm=NONE
highlight PmenuThumb   ctermfg=7    ctermbg=7    cterm=NONE
highlight MatchParen   ctermfg=15   ctermbg=0    cterm=underline
highlight ColorColumn  ctermfg=NONE ctermbg=0    cterm=NONE
highlight diffRemoved  ctermfg=1    ctermbg=NONE cterm=NONE
highlight diffAdded    ctermfg=2    ctermbg=NONE cterm=NONE
