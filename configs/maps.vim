"unbinds arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"opens NERDTree with \nt
nmap <leader>nt :NERDTreeToggle<cr>

"F11 toggles fullscreen
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 

" source $MYVIMRC reloads the saved $MYVIMRC
:nmap <Leader>s :source $MYVIMRC<cr>

" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
:nmap <Leader>v :e $HOME/vimfiles/.vimrc<cr>

" maps tilde to esc key
imap <C-Esc> `
imap <S-Esc> ~

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
"nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" unmaps mouse
nmap <LeftMouse> <NOP>
imap <LeftMouse> <NOP>

nmap <2-LeftMouse> <NOP>
imap <2-LeftMouse> <NOP>

"Git gutter toggle from Leader + g
nnoremap <Leader>gg :GitGutterToggle<CR>

"Git commands
nnoremap <Leader>g<Space> :Git add %<CR>
nnoremap <Leader>gc :Gcommit<CR>

"multiCursors
nnoremap <Leader>mcp :<c-u>call MultiCursorPlaceCursor()<cr>
nnoremap <Leader>mcc :<c-u>call MultiCursorManual()<cr>
nnoremap <Leader>mcr :<c-u>call MultiCursorRemoveCursors()<cr>
