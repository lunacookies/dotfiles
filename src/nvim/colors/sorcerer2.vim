set background=dark

hi clear
let g:colors_name = "sorcerer2"

hi  Normal       guifg=#c2c2b0  guibg=#202020 gui=NONE

hi  ColorColumn  guifg=NONE     guibg=#000000 gui=NONE
hi  CursorLine   guifg=NONE     guibg=#444444 gui=NONE
hi  Folded       guifg=#406060  guibg=#232c2c gui=NONE
hi  LineNr       guifg=#686858  guibg=#000000 gui=NONE
hi! link         CursorColumn   CursorLine

hi  Visual       guifg=#000000  guibg=#6688aa gui=NONE

hi  MatchParen   guifg=#fff000  guibg=#000000 gui=bold

hi  Search       guifg=#000000  guibg=#d6e770 gui=bold
hi  CurSearch    guifg=#ffffff  guibg=#ff4500 gui=bold
hi! link         IncSearch      CurSearch
hi! link         QuickFixLine   Search

hi  Pmenu        guifg=#ffffff  guibg=#444444 gui=NONE
hi  PmenuSel     guifg=#000000  guibg=#b1d631 gui=NONE
hi  PmenuSbar    guifg=#ffffff  guibg=#c1cdc1 gui=NONE
hi  PmenuThumb   guifg=#ffffff  guibg=#838b83 gui=NONE
hi  WildMenu     guifg=#000000  guibg=#87ceeb gui=NONE

hi  Title        guifg=#528b8b  guibg=NONE    gui=bold
hi  Directory    guifg=#1e90ff  guibg=NONE    gui=NONE
hi  NonText      guifg=#404050  guibg=NONE    gui=NONE
hi  SpecialKey   guifg=#505060  guibg=NONE    gui=NONE

hi  SpellBad     guifg=NONE     guibg=NONE    gui=undercurl
hi! link         SpellCap       SpellBad
hi! link         SpellLocal     SpellBad
hi! link         SpellRare      SpellBad

hi  ErrorMsg     guifg=#ff6a6a  guibg=NONE    gui=bold
hi  WarningMsg   guifg=#ee9a00  guibg=NONE    gui=NONE
hi  Question     guifg=#00ee00  guibg=NONE    gui=bold
hi  MoreMsg      guifg=#2e8b57  guibg=NONE    gui=bold
hi  ModeMsg      guifg=#000000  guibg=#00ff00 gui=bold

hi  StatusLine   guifg=#000000  guibg=#808070 gui=bold
hi  StatusLineNC guifg=#000000  guibg=#404c4c gui=italic
hi  WinSeparator guifg=#404c4c  guibg=#404c4c gui=NONE
hi  TabLineSel   guifg=#000000  guibg=#808070 gui=bold
hi  TabLine      guifg=#000000  guibg=#404c4c gui=italic
hi  TabLineFill  guifg=#000000  guibg=#404c4c gui=italic

hi  Comment      guifg=#707670  guibg=NONE    gui=italic

hi  Constant     guifg=#ff9800  guibg=NONE    gui=NONE
hi  String       guifg=#779b70  guibg=NONE    gui=NONE
hi  Number       guifg=#cc8800  guibg=NONE    gui=NONE
hi! link         Float          Number
hi! link         Character      Constant
hi! link         Boolean        Constant

hi  Identifier   guifg=#9ebac2  guibg=NONE    gui=NONE
hi  Function     guifg=#faf4c6  guibg=NONE    gui=NONE

hi  Statement    guifg=#90b0d1  guibg=NONE    gui=NONE
hi! link         Conditional    Statement
hi! link         Repeat         Statement
hi! link         Label          Statement
hi! link         Operator       Statement
hi! link         Keyword        Statement
hi! link         Exception      Statement

hi  PreProc      guifg=#528b8b  guibg=NONE    gui=NONE
hi! link         Include        PreProc
hi! link         Define         PreProc
hi! link         Macro          PreProc
hi! link         PreCondit      PreProc

hi  Type         guifg=#7e8aa2  guibg=NONE    gui=NONE
hi! link         StorageClass   Type
hi! link         Structure      Type
hi! link         Typedef        Type

hi  Special      guifg=#719611  guibg=NONE    gui=NONE
hi! link         SpecialChar    Special
hi! link         Tag            Special
hi! link         Delimiter      Special
hi! link         SpecialComment Special
hi! link         Debug          Special

hi  Todo         guifg=#8f6f8f  guibg=#202020 gui=italic,underline,bold

hi  DiffAdd      guifg=#000000  guibg=#3cb371 gui=NONE
hi  Added        guifg=#3cb371  guibg=NONE    gui=NONE
hi  DiffChange   guifg=#000000  guibg=#4f94cd gui=NONE
hi  Changed      guifg=#4f94cd  guibg=NONE    gui=NONE
hi  DiffDelete   guifg=#000000  guibg=#aa4450 gui=NONE
hi  Removed      guifg=#aa4450  guibg=NONE    gui=NONE
hi  DiffText     guifg=#000000  guibg=#8ee5ee gui=NONE

hi  diffLine     guifg=#88afcb  guibg=NONE    gui=italic
hi! link         diffFile       diffLine
hi! link         diffSubname    diffLine

hi! link         goFunctionCall Function
hi! link         htmlTag        htmlTagName
hi! link         xmlTag         xmlTagName
hi! link         xmlTagName     Statement
hi! link         xmlEqual       Operator
hi! link         vimFunction    Function
