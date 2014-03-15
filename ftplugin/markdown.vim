" Vim filetype plugin
" Language:		Markdown
" Maintainer:		Tim Pope <vimNOSPAM@tpope.org>
" Last Change:		2010 May 21

if exists("b:did_ftplugin")
  finish
endif

runtime! ftplugin/html.vim ftplugin/html_*.vim ftplugin/html/*.vim
unlet! b:did_ftplugin

setlocal comments=fb:*,fb:-,fb:+,n:> commentstring=>\ %s
setlocal formatoptions+=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+

let b:undo_ftplugin .= "|setl cms< com< fo<"

" vim:set sw=2:

"adds markdown heading line under current line
nmap <leader>mh yyp:s/./=/g

"adds markdown subheading line under current line
nmap <leader>ms yyp:s/./-/g

"mappings for dealing with my todo files
"--strikethrough current line and move to end of file
nmap <leader>mk 0/[a-z]i~~A~~
nmap <leader>md 0/[a-z]i~~A~~ddGp4G
"--new todo item
nmap <leader>mn 4GO1. 
"--move to IN PROGRESS section
nmap <leader>mp dd/PROGRESS2jp4G

"--undo strikethrough
nmap <leader>mu :s/\~//g<CR>

"null commit
nmap <leader>mg :!git add %<CR>:!git commit -m "null"<CR>
