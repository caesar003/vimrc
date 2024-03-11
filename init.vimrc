" Vim Script Configuration
" Author: Caesar
" Last Updated: 2024/03/09

" Display a smiling cat at start-up
echom '>^.^<'              

set nocompatible               " Use Vim, not Vi compatibility
syntax enable                  " Enable syntax highlighting
filetype plugin on             " Enable filetype-specific plugins

source $HOME/.vim/init/plug.vimrc
source $HOME/.vim/init/general.vimrc
source $HOME/.vim/init/mappings.vimrc
source $HOME/.vim/init/functions.vimrc
source $HOME/.vim/init/plugins.vimrc

