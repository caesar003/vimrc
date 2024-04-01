" Vim plug Plugin manager
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rose-pine/vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/sessionman.vim'

Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'              " Shows Git status flags for files and folders in NERDTree.
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " Adds syntax highlighting to NERDTree based on filetype.
" Plug 'scrooloose/nerdtree-project-plugin'       " Saves and restores the state of the NERDTree between sessions.
" Plug 'PhilRunninger/nerdtree-visual-selection'  " Enables NERDTree to open, delete, move, or copy multiple Visually-selected files at once.
Plug 'ryanoasis/vim-devicons'                   " Adds filetype-specific icons to NERDTree files and folders,

" Or build from source code by using npm
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
Plug 'psliwka/vim-smoothie'

" Javascript support
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'

" Go support 
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }
Plug 'charlespascoe/vim-go-syntax'

Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
Plug 'voldikss/vim-floaterm'
call plug#end()
