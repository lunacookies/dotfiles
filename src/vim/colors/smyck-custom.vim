hi clear

if exists("syntax_on")
  syntax reset
endif

set background=dark

let g:colors_name = "smyck-custom"

let s:black         = "000000"
let s:red           = "C65640"
let s:light_red     = "E3A2A0"
let s:green         = "8FB400"
let s:light_green   = "CEF046"
let s:yellow        = "CFB200"
let s:light_yellow  = "F6DC69"
let s:blue          = "508FAA"
let s:light_blue    = "9DD8F3"
let s:magenta       = "C79FD6"
let s:light_magenta = "FAB0FF"
let s:aqua          = "2FB9C5"
let s:light_aqua    = "79DFD8"

let s:palette = {
	\ "ui/bg-1"      : "171717",
	\ "ui/bg"        : "272727",
	\ "ui/bg+1"      : "373737",
	\ "ui/bg+2"      : "4D4D4D",
	\
	\ "ui/fg-3"      : "555555",
	\ "ui/fg-2"      : "6A6A6A",
	\ "ui/fg-1"      : "999999",
	\ "ui/fg"        : "E7E7E7",
	\ "ui/fg+1"      : "FFFFFF",
	\
	\ "ui/menu-1"    : "333333",
	\ "ui/menu"      : "444444",
	\ "ui/menu+1"    : "6A6A6A",
	\
	\ "black"        : s:black,
	\ "red"          : s:red,
	\ "light_red"    : s:light_red,
	\ "green"        : s:green,
	\ "light_green"  : s:light_green,
	\ "yellow"       : s:yellow,
	\ "light_yellow" : s:light_yellow,
	\ "blue"         : s:blue,
	\ "light_blue"   : s:light_blue,
	\ "magenta"      : s:magenta,
	\ "light_magenta": s:light_magenta,
	\ "aqua"         : s:aqua,
	\ "light_aqua"   : s:light_aqua,
	\ }

function! s:Highlight(name, fg, bg, style)
	let fg = ""
	let bg = ""

	if a:fg ==# "NONE"
		let fg = "NONE"
	else
		let fg = "#" . s:palette[a:fg]
	endif

	if a:bg ==# "NONE"
		let bg = "NONE"
	else
		let bg = "#" . s:palette[a:bg]
	endif

	execute "hi " .
		\ a:name .
		\ " ctermfg=NONE ctermbg=NONE" .
		\ " guifg=" . fg .
		\ " guibg=" . bg .
		\ " gui=" . a:style .
		\ " cterm=" . a:style
endfunction

call s:Highlight("Normal"       , "ui/fg"     , "ui/bg"        , "NONE")
call s:Highlight("CursorLine"   , "NONE"      , "ui/bg+1"      , "NONE")
call s:Highlight("CursorColumn" , "NONE"      , "ui/bg+1"      , "NONE")
call s:Highlight("LineNr"       , "ui/fg-2"   , "NONE"         , "NONE")
call s:Highlight("CursorLineNr" , "ui/fg+1"   , "ui/bg+1"      , "NONE")
call s:Highlight("StatusLine"   , "ui/fg"     , "ui/bg+2"      , "NONE")
call s:Highlight("StatusLineNC" , "ui/fg-2"   , "ui/bg-1"      , "NONE")
call s:Highlight("VertSplit"    , "ui/bg-1"   , "ui/bg-1"      , "NONE")
call s:Highlight("NonText"      , "ui/fg-3"   , "NONE"         , "NONE")
call s:Highlight("SpecialKey"   , "ui/fg-3"   , "NONE"         , "NONE")
call s:Highlight("Visual"       , "black"     , "light_blue"   , "NONE")
call s:Highlight("Search"       , "black"     , "light_aqua"   , "NONE")
call s:Highlight("IncSearch"    , "black"     , "light_yellow" , "NONE")
call s:Highlight("ColorColumn"  , "NONE"      , "ui/bg-1"      , "NONE")
call s:Highlight("TabLine"      , "ui/fg-2"   , "ui/bg-1"      , "NONE")
call s:Highlight("TabLineSel"   , "ui/fg"     , "ui/bg+2"      , "NONE")
call s:Highlight("TabLineFill"  , "ui/fg-2"   , "ui/bg-1"      , "NONE")
call s:Highlight("Pmenu"        , "ui/fg"     , "ui/menu"      , "NONE")
call s:Highlight("PmenuSel"     , "ui/fg+1"   , "ui/menu+1"    , "bold")
call s:Highlight("PmenuSbar"    , "ui/menu-1" , "ui/menu-1"    , "NONE")
call s:Highlight("PmenuThumb"   , "ui/menu+1" , "ui/menu+1"    , "NONE")
call s:Highlight("ErrorMsg"     , "black"     , "red"          , "bold")
call s:Highlight("Title"        , "ui/fg+1"   , "NONE"         , "bold")

call s:Highlight("Comment"    , "ui/fg-1"      , "NONE" , "NONE")
call s:Highlight("Constant"   , "light_yellow" , "NONE" , "NONE")
call s:Highlight("Identifier" , "light_blue"   , "NONE" , "NONE")
call s:Highlight("Statement"  , "light_green"  , "NONE" , "NONE")
call s:Highlight("PreProc"    , "aqua"         , "NONE" , "NONE")
call s:Highlight("Type"       , "light_green"  , "NONE" , "NONE")
call s:Highlight("Special"    , "light_red"    , "NONE" , "NONE")
call s:Highlight("Delimiter"  , "NONE"         , "NONE" , "NONE")
call s:Highlight("Underlined" , "NONE"         , "NONE" , "NONE")
call s:Highlight("Ignore"     , "NONE"         , "NONE" , "NONE")
call s:Highlight("Error"      , "NONE"         , "NONE" , "NONE")
call s:Highlight("Todo"       , "NONE"         , "NONE" , "NONE")

call s:Highlight("markdownBlockquote"       , "green"      , "NONE" , "NONE")
call s:Highlight("markdownHeadingDelimiter" , "green"      , "NONE" , "NONE")
call s:Highlight("markdownHeadingRule"      , "green"      , "NONE" , "NONE")
call s:Highlight("markdownListMarker"       , "green"      , "NONE" , "NONE")
call s:Highlight("markdownBoldDelimiter"    , "green"      , "NONE" , "NONE")
call s:Highlight("markdownItalicDelimiter"  , "green"      , "NONE" , "NONE")
call s:Highlight("markdownCode"             , "light_blue" , "NONE" , "NONE")
call s:Highlight("markdownCodeBlock"        , "light_blue" , "NONE" , "NONE")
call s:Highlight("markdownCodeDelimiter"    , "blue"       , "NONE" , "NONE")

hi link rubyDefine                 Keyword
hi link rubyConstant               Identifier
hi link rubyInstanceVariable       Identifier
hi link rubyInterpolation          PreProc
hi link rubyInterpolationDelimiter PreProc
hi link rubySymbol                 Special

hi link erlangAtom       Identifier
hi link erlangQuotedAtom Identifier
hi link erlangBIF        None

call s:Highlight("diffRemoved" , "light_red"   , "NONE" , "NONE")
call s:Highlight("diffAdded"   , "light_green" , "NONE" , "NONE")
