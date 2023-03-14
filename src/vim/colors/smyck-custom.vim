hi clear

if exists("syntax_on")
  syntax reset
endif

set background=dark

let g:colors_name = "smyck-custom"

let s:black         = "000000"
let s:red           = "C65640"
let s:light_red     = "DF978E"
let s:green         = "8FB400"
let s:light_green   = "CEF046"
let s:yellow        = "CFB200"
let s:light_yellow  = "FFE55F"
let s:blue          = "508FAA"
let s:light_blue    = "9DD8F3"
let s:magenta       = "C79FD6"
let s:light_magenta = "FAB0FF"
let s:aqua          = "258595"
let s:light_aqua    = "79DFD8"

let s:palette = {
	\ "ui/bg-1"      : "171717",
	\ "ui/bg"        : "272727",
	\ "ui/bg+1"      : "373737",
	\ "ui/bg+2"      : "4D4D4D",
	\
	\ "ui/fg-3"      : "444444",
	\ "ui/fg-2"      : "5A5A5A",
	\ "ui/fg-1"      : "999999",
	\ "ui/fg"        : "E7E7E7",
	\ "ui/fg+1"      : "FFFFFF",
	\
	\ "ui/menu-1"    : "333333",
	\ "ui/menu"      : "444444",
	\ "ui/menu+1"    : "6A6A6A",
	\
	\ "black"        : black,
	\ "red"          : red,
	\ "light_red"    : light_red,
	\ "green"        : green,
	\ "light_green"  : light_green,
	\ "yellow"       : yellow,
	\ "light_yellow" : light_yellow,
	\ "blue"         : blue,
	\ "light_blue"   : light_blue,
	\ "magenta"      : magenta,
	\ "light_magenta": light_magenta,
	\ "aqua"         : aqua,
	\ "light_aqua"   : light_aqua,
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
call s:Highlight("ColorColumn"  , "ui/bg-1"   , "ui/bg-1"      , "NONE")
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
call s:Highlight("Special"    , "NONE"         , "NONE" , "NONE")
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
