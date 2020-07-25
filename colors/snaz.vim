set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
if has('termguicolors')
    set termguicolors
endif

let g:colors_name = "snaz"


highlight Normal guibg=#282a36
