"macros for system clipboard access
let @c = '"+y'
let @v = '"+p'

"puts line number on every line in buffer
let @l = ':%normal I1. gg0G:I:%s/^\(\d\+\)\s*\./\1./gg0'

"numbers all lines in visual block selection
let @v = '0o0I1. gv:I:%s/^\(\d\+\)\s*\./\1./gvo'

"adds markdown heading line under current line
au Filetype markdown :nmap <leader>mh yyp:s/./=/g

"adds markdown subheading line under current line
au Filetype markdown :nmap <leader>ms yyp:s/./-/g

"macros for dealing with my todo files
"--strikethrough current line and move to end of file
au Filetype markdown :nmap <leader>mk 0/[a-z]i~~A~~
au Filetype markdown :nmap <leader>md 0/[a-z]i~~A~~ddGp4G
"--new todo item
au Filetype markdown :nmap <leader>mn 4GO1. 
"--move to IN PROGRESS section
au Filetype markdown :nmap <leader>mp dd/PROGRESS2jp4G

"--undo strikethrough
au Filetype markdown :nmap <leader>mu :s/\~//g<CR>

"null commit
au Filetype markdown :nmap <leader>mg :!git add %<CR>:!git commit -m "null"<CR>
