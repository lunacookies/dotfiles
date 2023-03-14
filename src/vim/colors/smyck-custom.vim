hi clear

if exists("syntax_on")
  syntax reset
endif

set background=dark

let g:colors_name = "smyck-custom"

let s:palette = {
	\ "deep_gray"    : "000000",
	\ "darker_gray"  : "272727",
	\ "dark_gray"    : "373737",
	\ "medium_gray"  : "4D4D4D",
	\ "light_gray"   : "5D5D5D",
	\ "lighter_gray" : "F9F9F9",
	\
	\ "red"          : "C65640",
	\ "light_red"    : "DF978E",
	\ "green"        : "8FB400",
	\ "light_green"  : "CEF046",
	\ "yellow"       : "CFB200",
	\ "light_yellow" : "FFE55F",
	\ "blue"         : "508FAA",
	\ "light_blue"   : "9DD8F3",
	\ "magenta"      : "C79FD6",
	\ "light_magenta": "FAB0FF",
	\ "aqua"         : "258595",
	\ "light_aqua"   : "79DFD8",
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

call s:Highlight("Normal"       , "lighter_gray" , "darker_gray"  , "NONE")
call s:Highlight("CursorLine"   , "NONE"         , "dark_gray"    , "NONE")
call s:Highlight("CursorColumn" , "NONE"         , "dark_gray"    , "NONE")
call s:Highlight("LineNr"       , "light_gray"   , "NONE"         , "NONE")
call s:Highlight("CursorLineNr" , "lighter_gray" , "dark_gray"    , "NONE")
call s:Highlight("StatusLine"   , "lighter_gray" , "medium_gray"  , "NONE")
call s:Highlight("StatusLineNC" , "light_gray"   , "deep_gray"    , "NONE")
call s:Highlight("VertSplit"    , "deep_gray"    , "deep_gray"    , "NONE")
call s:Highlight("NonText"      , "light_gray"   , "NONE"         , "NONE")
call s:Highlight("SpecialKey"   , "light_gray"   , "NONE"         , "NONE")
call s:Highlight("Visual"       , "deep_gray"    , "light_blue"   , "NONE")
call s:Highlight("Search"       , "deep_gray"    , "light_aqua"   , "NONE")
call s:Highlight("IncSearch"    , "deep_gray"    , "light_yellow" , "NONE")
call s:Highlight("ColorColumn"  , "deep_gray"    , "deep_gray"    , "NONE")
call s:Highlight("TabLine"      , "light_gray"   , "deep_gray"    , "NONE")
call s:Highlight("TabLineSel"   , "lighter_gray" , "medium_gray"  , "NONE")
call s:Highlight("TabLineFill"  , "light_gray"   , "deep_gray"    , "NONE")
call s:Highlight("Pmenu"        , "lighter_gray" , "medium_gray"  , "NONE")
call s:Highlight("PmenuSel"     , "deep_gray"    , "lighter_gray" , "NONE")
call s:Highlight("PmenuSbar"    , "deep_gray"    , "deep_gray"    , "NONE")
call s:Highlight("PmenuThumb"   , "light_gray"   , "light_gray"   , "NONE")
call s:Highlight("ErrorMsg"     , "deep_gray"    , "red"          , "bold")

call s:Highlight("Comment"    , "light_gray"   , "NONE" , "NONE")
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
