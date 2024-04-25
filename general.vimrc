set path+=**
set cursorcolumn
set cursorline
set conceallevel=1
set number relativenumber
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast
set backspace=indent,eol,start
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set linebreak
set wrap
set breakindent
set breakindentopt=shift:2
set laststatus=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set smartindent
set ruler
set belloff=all
set visualbell t_vb=
set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=99
set background=dark
set noshowmode
set wildmenu
set wildmode=list:longest,full
set showtabline=1
set hidden
set notimeout
set guifont=DroidSansMono\ Nerd\ Font\ 11
colorscheme gruvbox
let g:disable_bg = 1
hi Normal guibg=NONE ctermbg=NONE
hi NonText ctermbg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi LineNr ctermbg=NONE guibg=NONE

hi Floaterm guibg=black
hi FloatermBorder guibg=orange guifg=cyan

if exists('+termguicolors') && &termguicolors
  hi Cursor guifg=#FFA500 guibg=#1a1a1a
else
  hi Cursor ctermfg=208 ctermbg=234
endif

if exists('+termguicolors') && &termguicolors
  hi Visual guifg=#FFA500 guibg=Yellow
else
  hi Visual ctermfg=208 ctermbg=234
endif

if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

