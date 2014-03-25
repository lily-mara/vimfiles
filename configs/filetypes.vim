filetype plugin on
filetype indent on

au Filetype python setl ts=4 sw=4
au Filetype sh set ff=unix
au BufRead,BufNewFile *.fountain set filetype=fountain
au Filetype python set noshellslash
au BufRead,BufNewFile *.md set filetype=markdown

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

let g:syntastic_cpp_checkers=['gcc']
let g:syntastic_java_checkers=['javac']

au Filetype python nmap <leader>r :!python %<CR>
au Filetype sh nmap <leader>r :!./%<CR>
au Filetype tex nmap <leader>r :silent:!latex %<CR>!%:r.dvi<CR>
