set background=dark
hi clear
let g:colors_name = "silene"

hi Normal       guifg=#ebeae9 guibg=#3b4857 gui=NONE

hi Comment      guifg=#7b8590 guibg=NONE    gui=NONE
hi Constant     guifg=NONE    guibg=NONE    gui=NONE
hi String       guifg=#bdb8b2 guibg=NONE    gui=NONE
hi Identifier   guifg=NONE    guibg=NONE    gui=NONE
hi Statement    guifg=NONE    guibg=NONE    gui=NONE
hi PreProc      guifg=NONE    guibg=NONE    gui=NONE
hi Type         guifg=NONE    guibg=NONE    gui=NONE
hi Special      guifg=NONE    guibg=NONE    gui=NONE
hi Underlined   guifg=NONE    guibg=NONE    gui=NONE
hi Ignore       guifg=NONE    guibg=NONE    gui=NONE
hi Error        guifg=#3b4857 guibg=#db6c6c gui=NONE
hi Todo         guifg=#ebeae9 guibg=#3ba2cc gui=NONE

hi Title        guifg=NONE    guibg=NONE    gui=BOLD
hi Directory    guifg=#3ba2cc guibg=NONE    gui=NONE
hi SpecialKey   guifg=#7b8590 guibg=NONE    gui=NONE

hi Visual       guifg=#3b4857 guibg=#a7e7ff gui=NONE
hi IncSearch    guifg=#3b4857 guibg=#d5bc02 gui=NONE
hi Search       guifg=#3b4857 guibg=#ddd668 gui=NONE
hi MatchParen   guifg=#ebeae9 guibg=#3ba2cc gui=NONE

hi LineNr       guifg=#7b8590 guibg=NONE    gui=NONE
hi CursorLineNr guifg=#7b8590 guibg=#414f5d gui=NONE
hi EndOfBuffer  guifg=#7b8590 guibg=NONE    gui=NONE
hi NonText      guifg=#7b8590 guibg=NONE    gui=NONE

hi StatusLine   guifg=#dee3e9 guibg=#7b8590 gui=NONE
hi StatusLineNC guifg=#a7acb2 guibg=#51606f gui=NONE
hi VertSplit    guifg=#51606f guibg=#51606f gui=NONE
hi ModeMsg      guifg=#dee3e9 guibg=NONE    gui=NONE

hi TabLine      guifg=#a7acb2 guibg=#51606f gui=NONE
hi TabLineSel   guifg=#dee3e9 guibg=#7b8590 gui=NONE
hi TabLineFill  guifg=#dee3e9 guibg=#51606f gui=NONE

hi ColorColumn  guifg=NONE    guibg=#414f5d gui=NONE
hi CursorLine   guifg=NONE    guibg=#414f5d gui=NONE
hi CursorColumn guifg=NONE    guibg=#414f5d gui=NONE

hi Pmenu        guifg=#dee3e9 guibg=#51606f gui=NONE
hi PmenuSel     guifg=#3b4857 guibg=#dee3e9 gui=NONE
hi PmenuSbar    guifg=#51606f guibg=#51606f gui=NONE
hi PmenuThumb   guifg=#a7acb2 guibg=#a7acb2 gui=NONE

hi ErrorMsg     guifg=#db6c6c guibg=NONE    gui=NONE
hi WarningMsg   guifg=#db6c6c guibg=NONE    gui=NONE
hi MoreMsg      guifg=#5bb899 guibg=NONE    gui=NONE
hi Question     guifg=#5bb899 guibg=NONE    gui=NONE

hi diffRemoved  guifg=#db6c6c guibg=NONE    gui=NONE
hi diffAdded    guifg=#5bb899 guibg=NONE    gui=NONE

hi! link markdownHeadingDelimiter  markdownDelimiter
hi! link markdownHeadingRule       markdownDelimiter
hi! link markdownCodeDelimiter     markdownDelimiter
hi! link markdownLinkTextDelimiter markdownDelimiter
hi! link markdownLinkDelimiter     markdownDelimiter
hi! link markdownUrl               markdownDelimiter
hi! link markdownBoldDelimiter     markdownDelimiter
hi! link markdownItalicDelimiter   markdownDelimiter
hi! link markdownListMarker        markdownDelimiter
hi! link markdownBlockquote        markdownDelimiter
hi! link markdownId                markdownDelimiter
hi markdownDelimiter guifg=#a7acb2 guibg=NONE gui=NONE
hi markdownCode      guifg=#a7acb2 guibg=NONE gui=NONE

hi! link htmlTagName htmlTag
hi! link htmlEndTag  htmlTag
hi! link htmlArg     htmlTag
hi! link htmlString  htmlTag
hi htmlTag guifg=#a7acb2 guibg=NONE gui=NONE
