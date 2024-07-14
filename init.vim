"                                                          
"                  _/                                      
"     _/      _/      _/_/_/  _/_/    _/  _/_/    _/_/_/   
"    _/      _/  _/  _/    _/    _/  _/_/      _/          
"     _/  _/    _/  _/    _/    _/  _/        _/           
"_/    _/      _/  _/    _/    _/  _/          _/_/_/      
"
"  .vimrc
"  Author: caesar https://github.com/caesar003
"  Repository: https://github.com/caesar003/vimrc
"  Last Modified: "2024-07-05"
"

" Show smiling cat at start up
echom '>^.^<'

set nocompatible
syntax on
filetype plugin indent on


source $HOME/.vim/init/scripts/plug.vim
source $HOME/.vim/init/scripts/settings.vim
source $HOME/.vim/init/scripts/mappings.vim

" {{{ Functions

source $HOME/.vim/init/scripts/functions/init.vim

" {{{ Custom commands
command! Noh nohlsearch
command! NOH nohlsearch
" }}}

" }}}

source $HOME/.vim/init/scripts/plugins/init.vim
