"                                                          
"                  _/                                      
"     _/      _/      _/_/_/  _/_/    _/  _/_/    _/_/_/   
"    _/      _/  _/  _/    _/    _/  _/_/      _/          
"     _/  _/    _/  _/    _/    _/  _/        _/           
"_/    _/      _/  _/    _/    _/  _/          _/_/_/      
"

echom '>^.^<'

set nocompatible
syntax on
filetype plugin indent on

source $HOME/.vim/init/scripts/plug.vim
source $HOME/.vim/init/scripts/general.vim
source $HOME/.vim/init/scripts/mappings.vim
source $HOME/.vim/init/scripts/functions/init.vim
source $HOME/.vim/init/scripts/plugins/init.vim

autocmd VimEnter * call AirlineInit()
autocmd FileType java setlocal omnifunc=javacomplete#Complete

