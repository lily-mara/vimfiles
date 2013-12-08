syntax on
set nu
set background=light
set t_Co=256
set cursorline

color solarized

" sets size of window / font
if has("gui_running")
    set lines=999 columns=116
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set nrformats=

set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

if $COLORTERM == 'gnome-terminal'
    color molokai
endif
