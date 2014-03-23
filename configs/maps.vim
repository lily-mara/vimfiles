"unbind arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"unmap mouse
nmap <LeftMouse> <NOP>
imap <LeftMouse> <NOP>
nmap <2-LeftMouse> <NOP>
imap <2-LeftMouse> <NOP>

"re-source configs
nmap <leader>ss :source $MYVIMRC<cr>

"open NERDTree with ,nt
nmap <leader>nt :NERDTreeToggle<cr>

"Unite mappings
nnoremap <Leader>b :Unite buffer<CR>
nnoremap <Leader>f :Unite file<CR>

"Git commands
nnoremap <Leader>g :Git add %<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>ge :Extradite<CR>

"make
:nmap <leader>m :make<cr>

"sudoed write
cmap w!! w !sudo tee > /dev/null %

"space saves buffer
noremap <Leader>w :w!<CR>

"spelling plugin
noremap <Leader>sp :Spell<CR>
noremap <Leader>sn :Nospell<CR>

" 'saves' file to clipboard
nnoremap <C-s> gg"+yG:q!

"enter linewise visual
nmap <Leader><Leader> V
