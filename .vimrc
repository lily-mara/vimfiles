set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp
set directory+=,~/tmp,$TMP

let mapleader = "\<Space>"

if has('win32') || has('win64')
	set noshellslash
endif
if has('unix')
	let $VIM = '/home/$USER/.vim'
endif

"sources different config files to keep this file cleaner
source $VIM/configs/plugins.vim
source $VIM/configs/filetypes.vim
source $VIM/configs/look.vim
source $VIM/configs/maps.vim
source $VIM/configs/macros.vim
source $VIM/configs/functions.vim
