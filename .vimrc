set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp

source $VIM/configs/filetypes.vim
source $VIM/configs/look.vim
source $VIM/configs/maps.vim

runtime bundle/pathogen/autoload/pathogen.vim

set nocp
call pathogen#infect()
