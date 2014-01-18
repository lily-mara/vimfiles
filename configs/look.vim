syntax on
set nu
set background=light
set t_Co=256
set cursorline

color molokai

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
endif

" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set nrformats=

set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" for eclim plugin
set guioptions-=T
set guioptions-=m

set showcmd
set rnu

if &encoding == "utf-8"
	set list
	set listchars=eol:¬,tab:>-,trail:#
endif

set tabstop=4
set shiftwidth=4
