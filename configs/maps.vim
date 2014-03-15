"unbinds arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"opens NERDTree with ,nt
nmap <leader>nt :NERDTreeToggle<cr>

" source $MYVIMRC reloads the saved $MYVIMRC
:nmap <Leader>ss :source $MYVIMRC<cr>

" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
:nmap <Leader>v :e $HOME/.vim/.vimrc<cr>

" Unite mappings
nnoremap <Leader>b :Unite buffer
nnoremap <Leader>f :Unite file

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
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>ge :Extradite<CR>

"makes
:nmap <leader>m :make<cr>

"maps w!! to sudoed write
cmap w!! w !sudo tee > /dev/null %

"maps space to save buffer
noremap <Space> :w!<CR>

noremap <Leader>sp :Spell<CR>
noremap <Leader>sn :Nospell<CR>
