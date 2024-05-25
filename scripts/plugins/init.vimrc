" =============================================================================
" Plugin Configurations
" =============================================================================

source $HOME/.vim/init/scripts/plugins/float-term.vimrc
source $HOME/.vim/init/scripts/plugins/gitgutter.vimrc
source $HOME/.vim/init/scripts/plugins/tmux.vimrc
source $HOME/.vim/init/scripts/plugins/js.vimrc
source $HOME/.vim/init/scripts/plugins/airline.vimrc
source $HOME/.vim/init/scripts/plugins/go.vimrc
source $HOME/.vim/init/scripts/plugins/nerd-tree.vimrc
source $HOME/.vim/init/scripts/plugins/startify.vimrc
source $HOME/.vim/init/scripts/plugins/markdown.vimrc
source $HOME/.vim/init/scripts/plugins/close-tags.vimrc
source $HOME/.vim/init/scripts/plugins/which-key.vimrc


autocmd VimEnter * call AirlineInit()
autocmd FileType java setlocal omnifunc=javacomplete#Complete
