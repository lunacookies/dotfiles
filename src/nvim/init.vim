set clipboard^=unnamed
set fillchars+=stl:─,stlnc:─
set ignorecase
set inccommand=split
set linebreak
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:•,trail:•
set numberwidth=5
set smartcase
set splitbelow
set splitright

let &statusline = "%f %r%m"

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

highlight Comment      ctermfg=12   ctermbg=NONE cterm=NONE
highlight Constant     ctermfg=7    ctermbg=NONE cterm=NONE
highlight Number       ctermfg=7    ctermbg=NONE cterm=NONE
highlight String       ctermfg=7    ctermbg=NONE cterm=NONE
highlight Identifier   ctermfg=7    ctermbg=NONE cterm=NONE
highlight Function     ctermfg=7    ctermbg=NONE cterm=NONE
highlight Statement    ctermfg=7    ctermbg=NONE cterm=NONE
highlight PreProc      ctermfg=7    ctermbg=NONE cterm=NONE
highlight Type         ctermfg=7    ctermbg=NONE cterm=NONE
highlight Special      ctermfg=7    ctermbg=NONE cterm=NONE
highlight Underlined   ctermfg=7    ctermbg=NONE cterm=underline
highlight Ignore       ctermfg=8    ctermbg=NONE cterm=NONE
highlight Error        ctermfg=1    ctermbg=NONE cterm=underline
highlight Todo         ctermfg=7    ctermbg=2    cterm=NONE

highlight Visual       ctermfg=7    ctermbg=8    cterm=NONE
highlight Search       ctermfg=0    ctermbg=3    cterm=NONE
highlight IncSearch    ctermfg=0    ctermbg=11   cterm=NONE
highlight StatusLine   ctermfg=8    ctermbg=NONE cterm=NONE
highlight StatusLineNC ctermfg=8    ctermbg=NONE cterm=NONE
highlight VertSplit    ctermfg=8    ctermbg=NONE cterm=NONE
highlight NonText      ctermfg=8    ctermbg=NONE cterm=NONE
highlight SpecialKey   ctermfg=8    ctermbg=NONE cterm=bold
highlight CursorLine   ctermfg=7    ctermbg=8    cterm=NONE
highlight CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE
highlight LineNr       ctermfg=8    ctermbg=NONE cterm=NONE
highlight CursorLineNr ctermfg=8    ctermbg=NONE cterm=NONE
highlight Title        ctermfg=15   ctermbg=NONE cterm=bold
highlight Pmenu        ctermfg=0    ctermbg=8    cterm=NONE
highlight PmenuSel     ctermfg=7    ctermbg=8    cterm=NONE
highlight PmenuSbar    ctermfg=8    ctermbg=8    cterm=NONE
highlight PmenuThumb   ctermfg=7    ctermbg=7    cterm=NONE
highlight MatchParen   ctermfg=2    ctermbg=NONE cterm=underline
highlight ColorColumn  ctermfg=1    ctermbg=8    cterm=NONE
highlight diffRemoved  ctermfg=1    ctermbg=NONE cterm=NONE
highlight diffAdded    ctermfg=2    ctermbg=NONE cterm=NONE

highlight link fugitiveHash             NonText
highlight link fugitiveHeader           NonText
highlight link fugitiveHeading          Title
highlight link fugitiveHelpHeader       NonText
highlight link fugitiveStagedHeading    Title
highlight link fugitiveUnstagedHeading  Title
highlight link fugitiveUntrackedHeading Title
highlight link gitCommitOverflow        Error
