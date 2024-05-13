call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' } 
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/sessionman.vim'
Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'psliwka/vim-smoothie'

" Javascript + typescript
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

" Go
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }
Plug 'charlespascoe/vim-go-syntax'

Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
Plug 'voldikss/vim-floaterm'
Plug 'ryanoasis/vim-devicons'

" C#
Plug 'OmniSharp/omnisharp-vim', { 'for' : 'cs' }

" PHP
Plug 'jwalton512/vim-blade', { 'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'vim-scripts/svg.vim'

" Java-completion
Plug 'vim-scripts/vim-javacomplete2', { 'for': 'java' } 


call plug#end()
