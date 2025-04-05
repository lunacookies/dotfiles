set background=dark

hi clear
let g:colors_name = "smyck"

hi  Normal       ctermfg=NONE   guifg=#f7f7f7 ctermbg=NONE guibg=#282828 cterm=NONE      gui=NONE
hi  CursorLine   ctermfg=NONE   guifg=NONE    ctermbg=0    guibg=#000000 cterm=NONE      gui=NONE
hi  ColorColumn  ctermfg=NONE   guifg=NONE    ctermbg=0    guibg=#000000 cterm=NONE      gui=NONE
hi! link         CursorColumn   CursorLine

hi  Visual       ctermfg=0      guifg=#000000 ctermbg=12   guibg=#9cd9f0 cterm=NONE      gui=NONE
hi  Search       ctermfg=0      guifg=#000000 ctermbg=11   guibg=#ffe377 cterm=NONE      gui=NONE
hi  CurSearch    ctermfg=0      guifg=#000000 ctermbg=3    guibg=#d0b03c cterm=NONE      gui=NONE
hi! link         IncSearch      CurSearch

hi  MatchParen   ctermfg=0      guifg=#000000 ctermbg=11   guibg=#ffe377 cterm=NONE      gui=NONE
hi  NonText      ctermfg=8      guifg=#505050 ctermbg=NONE guibg=NONE    cterm=NONE      gui=NONE

hi  StatusLine   ctermfg=NONE   guifg=NONE    ctermbg=7    guibg=#909090 cterm=NONE      gui=NONE
hi  StatusLineNC ctermfg=7      guifg=#909090 ctermbg=8    guibg=#505050 cterm=NONE      gui=NONE
hi  WinSeparator ctermfg=8      guifg=#505050 ctermbg=8    guibg=#505050 cterm=NONE      gui=NONE
hi! link         TabLineSel     StatusLine
hi! link         TabLine        StatusLineNC
hi! link         TabLineFill    StatusLineNC
hi! link         VertSplit      WinSeparator

hi  Comment      ctermfg=7      guifg=#909090 ctermbg=NONE guibg=NONE    cterm=NONE      gui=NONE

hi  Constant     ctermfg=10     guifg=#cdee69 ctermbg=NONE guibg=NONE    cterm=NONE      gui=NONE
hi! link         String         Constant
hi! link         Character      Constant
hi! link         Number         Constant
hi! link         Boolean        Constant
hi! link         Float          Constant

hi  Identifier   ctermfg=NONE   guifg=NONE    ctermbg=NONE guibg=NONE    cterm=NONE      gui=NONE
hi  Function     ctermfg=12     guifg=#9cd9f0 ctermbg=NONE guibg=NONE    cterm=NONE      gui=NONE

hi  Statement    ctermfg=13     guifg=#fbb1f9 ctermbg=NONE guibg=NONE    cterm=NONE      gui=NONE
hi  Operator     ctermfg=NONE   guifg=NONE    ctermbg=NONE guibg=NONE    cterm=NONE      gui=NONE
hi! link         Conditional    Statement
hi! link         Repeat         Statement
hi! link         Label          Statement
hi! link         Keyword        Statement
hi! link         Exception      Statement

hi  PreProc      ctermfg=13     guifg=#fbb1f9 ctermbg=NONE guibg=NONE    cterm=NONE      gui=NONE
hi! link         Include        PreProc
hi! link         Define         PreProc
hi! link         Macro          PreProc
hi! link         PreCondit      PreProc

hi  Type         ctermfg=14     guifg=#77dfd8 ctermbg=NONE guibg=NONE    cterm=NONE      gui=NONE
hi! link         StorageClass   Type
hi! link         Structure      Type
hi! link         Typedef        Type

hi  Special      ctermfg=NONE   guifg=NONE    ctermbg=NONE guibg=NONE    cterm=NONE      gui=NONE
hi! link         SpecialChar    Special
hi! link         Tag            Special
hi! link         Delimiter      Special
hi! link         SpecialComment Special
hi! link         Debug          Special

hi  Underlined   ctermfg=4      guifg=#72b3cc ctermbg=NONE guibg=NONE    cterm=underline gui=underline
hi  Error        ctermfg=1      guifg=#c75646 ctermbg=0    guibg=#000000 cterm=reverse   gui=reverse
hi  Title        ctermfg=NONE   guifg=NONE    ctermbg=NONE guibg=NONE    cterm=bold      gui=bold

hi! link         goFunctionCall Function
hi! link         htmlTag        htmlTagName
hi! link         htmlTagN       htmlTagName
hi! link         htmlEndTag     htmlTagName
hi! link         xmlTag         xmlTagName
hi! link         xmlTagName     htmlTagName
hi! link         htmlTagName    Function
