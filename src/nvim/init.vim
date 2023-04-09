set breakindent
set clipboard^=unnamed
set colorcolumn=+1
set ignorecase
set linebreak
set list
set numberwidth=5
set smartcase
set splitbelow
set splitright

let &statusline = " %f %r%m%y%=%4l/%-4L %4c %4v "

let &listchars = "tab:» ,nbsp:•,trail:•"
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

set runtimepath+=/opt/homebrew/opt/fzf
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

	autocmd BufWritePost *.html,*.css,*.scss,*.md execute "silent! !prettier -w %" | redraw!
	autocmd BufNewFile,BufRead *.html,*.css,*.scss,*.md setlocal softtabstop=2 shiftwidth=2 expandtab

	autocmd BufWritePost *.nix execute "silent! !nixpkgs-fmt %" | redraw!
	autocmd BufNewFile,BufRead *.nix setlocal softtabstop=2 shiftwidth=2 expandtab

	autocmd BufWritePost *.c,*.h,*.m,*.metal silent make! | redraw!
augroup END

" Color scheme

autocmd ColorScheme * hi Comment    ctermfg=15 ctermbg=NONE cterm=bold
autocmd ColorScheme * hi Constant   ctermfg=10 ctermbg=NONE cterm=NONE
autocmd ColorScheme * hi Identifier ctermfg=4  ctermbg=NONE cterm=NONE
autocmd ColorScheme * hi Statement  ctermfg=12 ctermbg=NONE cterm=NONE
autocmd ColorScheme * hi PreProc    ctermfg=6  ctermbg=NONE cterm=NONE
autocmd ColorScheme * hi Type       ctermfg=13 ctermbg=NONE cterm=NONE
autocmd ColorScheme * hi Special    ctermfg=5  ctermbg=NONE cterm=NONE
autocmd ColorScheme * hi Underlined ctermfg=4  ctermbg=NONE cterm=underline
autocmd ColorScheme * hi Ignore     ctermfg=8  ctermbg=NONE cterm=NONE
autocmd ColorScheme * hi Error      ctermfg=1  ctermbg=NONE cterm=reverse
autocmd ColorScheme * hi Todo       ctermfg=11 ctermbg=NONE cterm=reverse

autocmd ColorScheme * hi Visual       ctermfg=4    ctermbg=NONE cterm=reverse
autocmd ColorScheme * hi NonText      ctermfg=8    ctermbg=NONE cterm=NONE
autocmd ColorScheme * hi SpecialKey   ctermfg=8    ctermbg=NONE cterm=NONE
autocmd ColorScheme * hi StatusLine   ctermfg=15   ctermbg=0    cterm=bold
autocmd ColorScheme * hi StatusLineNC ctermfg=8    ctermbg=0    cterm=bold
autocmd ColorScheme * hi VertSplit    ctermfg=0    ctermbg=0    cterm=NONE
autocmd ColorScheme * hi Search       ctermfg=3    ctermbg=NONE cterm=reverse
autocmd ColorScheme * hi IncSearch    ctermfg=11   ctermbg=NONE cterm=reverse
autocmd ColorScheme * hi ColorColumn  ctermfg=NONE ctermbg=0    cterm=NONE
autocmd ColorScheme * hi MatchParen   ctermfg=15   ctermbg=8    cterm=bold

colorscheme default
