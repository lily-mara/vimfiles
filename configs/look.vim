syntax on
set nu

set t_Co=256
set cursorline

color monokai

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
	set t_ut= 
endif

" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-13.(%l,%c%V%)\ %{fugitive#statusline()}
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
	set listchars=eol:¬,tab:»\ ,trail:#
else
	set list
	set listchars=tab:\|\ ,trail:#
endif

set tabstop=4
set shiftwidth=4
