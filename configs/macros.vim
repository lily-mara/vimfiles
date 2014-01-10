"macros for system clipboard access
let @c = '"+y'
let @v = '"+p'

"puts line number on every line in buffer
let @l = ':%normal I1. gg0G:I:%s/^\(\d\+\)\s*\./\1./gg0'

"numbers all lines in visual block selection
let @v = '0o0I1. gv:I:%s/^\(\d\+\)\s*\./\1./gvo'

"adds markdown heading line under current line
let @h = 'yyp:s/./=/g'

"adds markdown subheading line under current line
let @s = 'yyp:s/./-/g'

"macros for dealing with my todo files
"--strikethrough current line and move to end of file
let @d = '0/[a-z]i~~A~~ddGp4G'
"--move to 'TALK ABOUT' section
let @k = 'dd/TALK2jp4G'
"--new todo item
let @g = '4GO1. '
"--move to 'IN PROGRESS' section
let @p = 'dd/PROGRESS2jp4G'
