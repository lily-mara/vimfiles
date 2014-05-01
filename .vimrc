set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp
set directory+=,~/tmp,$TMP

let mapleader = "\<Space>"

set fileformat=unix
set fileformats=unix,dos

if has('win32') || has('win64')
	set noshellslash
endif
if has('unix')
	let $VIM = '/home/$USER/.vim'
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

"Unimpaired - keyboard shortcuts
Bundle 'tpope/vim-unimpaired'

"snippet manager and dependencies
Bundle 'garbas/vim-snipmate'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"Git plugins
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'

"Syntax
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-markdown'
"
"Tim Pope plugins
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'

"Look
Bundle 'natemara/vim-monokai'

syntax on
set nu

set t_Co=256
set cursorline

color monokai

" sets font
if has("gui_gtk2")
	set guifont=Inconsolata\ 12
elseif has("gui_macvim")
	set guifont=Menlo\ Regular:h14
elseif has("gui_win32")
	set guifont=Consolas:h11:cANSI
endif

set shellslash
set grepprg=grep\ -nH\ $*

set showcmd
set rnu

set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-13.(%l,%c%V%)\ %{fugitive#statusline()}

set list
set listchars=eol:¬,tab:\ \ ,trail:·

set tabstop=4
set shiftwidth=4
set colorcolumn=80
filetype plugin on
filetype indent on

au Filetype python setl ts=4 sw=4
au Filetype sh set ff=unix
au BufRead,BufNewFile *.fountain set filetype=fountain
au Filetype python set noshellslash
au BufRead,BufNewFile *.md set filetype=markdown

au Filetype python nmap <leader>r :!python3 %<CR>
au Filetype sh nmap <leader>r :!./%<CR>
au Filetype tex nmap <leader>r :silent:!latex %<CR>!%:r.dvi<CR>

"unmap mouse
nmap <LeftMouse> <NOP>
imap <LeftMouse> <NOP>
nmap <2-LeftMouse> <NOP>
imap <2-LeftMouse> <NOP>

"re-source configs
nmap <leader>ss :source $MYVIMRC<cr>

"open NERDTree with ,nt
nmap <leader>nt :NERDTreeToggle<cr>

"escape mapping
inoremap <C-c> <esc>
vnoremap <C-c> <esc>
cnoremap <C-c> <esc>

"Unite mappings
nnoremap <Leader>b :Unite -start-insert buffer<CR>
nnoremap <Leader>f :Unite -start-insert file_rec<CR>
nnoremap <leader>t :silent !ctags -R * <CR> :Unite -start-insert tag<CR>

if has('unix') || has('macunix')
	nnoremap <leader>v :VimShell<CR>
endif

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


command! Prose inoremap <buffer> . .<C-G>u|
            \ inoremap <buffer> ! !<C-G>u|
            \ inoremap <buffer> ? ?<C-G>u|
            \ setlocal spell spelllang=en
            \     nolist nowrap tw=74 fo=t1 nonu|
            \ augroup PROSE|
            \   autocmd InsertEnter <buffer> set fo+=a|
            \   autocmd InsertLeave <buffer> set fo-=a|
            \ augroup END

command! Spell setlocal spell spelllang=en

command! Nospell setlocal nospell

command! Code silent! iunmap <buffer> .|
            \ silent! iunmap <buffer> !|
            \ silent! iunmap <buffer> ?|
            \ setlocal nospell list wrap
            \     tw=74 fo=cqr1 nu|
            \ silent! autocmd! PROSE * <buffer>

