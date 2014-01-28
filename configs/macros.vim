Autocmd filetype markdown call MD_maps()
"macros for system clipboard access
let @c = '"+y'
let @v = '"+p'

"puts line number on every line in buffer
let @l = ':%normal I1. gg0G:I:%s/^\(\d\+\)\s*\./\1./gg0'

"numbers all lines in visual block selection
let @v = '0o0I1. gv:I:%s/^\(\d\+\)\s*\./\1./gvo'

function MD_maps()
	"adds markdown heading line under current line
	nmap <leader>mh yyp:s/./=/g

	"adds markdown subheading line under current line
	nmap <leader>ms yyp:s/./-/g

	"macros for dealing with my todo files
	"--strikethrough current line and move to end of file
	nmap <leader>mk 0/[a-z]i~~A~~
	nmap <leader>md 0/[a-z]i~~A~~ddGp4G
	"--new todo item
	nmap <leader>mg 4GO1. 
	"--move to IN PROGRESS section
	nmap <leader>mp dd/PROGRESS2jp4G
endfunction
