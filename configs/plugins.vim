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
Bundle 'scrooloose/syntastic'
Bundle 'git://git.code.sf.net/p/vim-latex/vim-latex'
Bundle 'tpope/vim-markdown'
"
"Tim Pope plugins
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'

"Unite and tag plugin
Bundle 'Shougo/unite.vim'
Bundle 'tsukkee/unite-tag'

"Look
Bundle 'bling/vim-airline'
Bundle 'natemara/vim-monokai'


if has('unix') || has('macunix')
	Bundle 'jpalardy/vim-slime'
	let g:slime_target='tmux'
endif
