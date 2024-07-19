" {{{ Settings
" {{{ General Settings
set autoread
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast
set backspace=indent,eol,start
set number relativenumber
set cursorcolumn
set cursorline
set conceallevel=2
set path+=**
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,*node_modules/
set directory=~/.vim/swapfiles//
set hidden
set timeout
set timeoutlen=500
set ruler
set noshowmode
set wildmenu
set wildmode=list:longest,full
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set hlsearch
set incsearch
set ignorecase
set smartcase
set laststatus=2
set linebreak
set wrap
set breakindent
set foldcolumn=1
set foldlevelstart=99
set showtabline=1
set showcmd
set termguicolors
set belloff=all
set visualbell t_vb=
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
set t_ZH=^[[3m
set t_ZR=^[[23m
" }}}

" {{{ Status Line Settings
set statusline=
set statusline+=%f                 " Full file path
set statusline+=\ %m               " Modified flag
set statusline+=\ %r               " Read-only flag
set statusline+=\ %y               " Filetype in brackets
set statusline+=\ %{&ff}           " File format in brackets
set statusline+=%h                 " Help buffer
set statusline+=%=                 " Right align
set statusline+=\ l:\%l\/\%L       " Line number of total lines
set statusline+=\ c:\%c            " Column number
set statusline+=\ %p%%             " Percentage through entire file


set tags=./tags,tags;$HOME
" }}}

" {{{ Colorscheme and Theme Settings
source $HOME/.vim/init/scripts/theme.vim

highlight Comment cterm=italic

highlight String cterm=italic gui=italic
highlight Function cterm=italic gui=italic
highlight Keyword cterm=italic gui=italic
let g:disable_bg=1
hi Normal guibg=NONE ctermbg=NONE
hi NonText ctermbg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi LineNr ctermbg=NONE guibg=NONE
hi Floaterm guibg=NONE
hi FloatermBorder guibg=NONE guifg=white
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
" }}}

" {{{ Clipboard Settings
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif
if has("termguicolors")
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif
" }}}

" {{{ FileType Settings
autocmd FileType javascript setlocal foldmethod=syntax
autocmd FileType html setlocal foldmethod=indent
autocmd FileType css setlocal foldmethod=syntax
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType json setlocal foldmethod=syntax
autocmd FileType sh setlocal foldmethod=syntax
" }}}

"" }}}
