set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp

let mapleader=","

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
