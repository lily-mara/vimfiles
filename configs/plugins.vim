set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let g:slime_target='tmux'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'garbas/vim-snipmate'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'tristen/vim-sparkup'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'git://git.code.sf.net/p/vim-latex/vim-latex'
Bundle 'tpope/vim-markdown'
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-unimpaired'
Bundle 'natemara/vim-monokai'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'
Bundle 'Shougo/unite.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'tsukkee/unite-tag'
Bundle 'bling/vim-airline'


if has('unix') || has('macunix')
	Bundle 'jpalardy/vim-slime'
endif
