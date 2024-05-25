" =============================================================================
" GENERAL SETTINGS
" =============================================================================

" Basic Settings
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast
set backspace=indent,eol,start
set number relativenumber
set cursorcolumn
set cursorline
set conceallevel=1
set path+=**
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,*node_modules/
set directory=~/.vim/swapfiles//
set hidden
" set notimeout
set timeoutlen=500
set ruler
set noshowmode
set wildmenu
set wildmode=list:longest,full

" Tab and Indentation Settings
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Search Settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" Visual Settings
set laststatus=2
set background=dark 
set linebreak
set wrap
set breakindent
set foldmethod=indent
set foldcolumn=1
set foldlevelstart=99
set showtabline=1
set termguicolors
colorscheme sorbet

" Disable Bell
set belloff=all
set visualbell t_vb=

" Cursor shape and blink
" Insert Mode - blinking bar 
let &t_SI = "\e[5 q"

" Normal Mode - blinking block
let &t_EI = "\e[1 q"

" Here are other available options as cheatsheet
" 2 = Solid block | 3 = blinking underscore | 4 = solid underscore | 6 = vertical line

" Italic font 
set t_ZH=^[[3m
set t_ZR=^[[23m

highlight Comment cterm=italic
highlight String cterm=italic gui=italic
highlight Function cterm=italic gui=italic
highlight Keyword cterm=italic gui=italic

" Transparency Settings
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

if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

if has("termguicolors")
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif

" Define custom highlight groups for which-key
highlight WhichKey guifg=#ff0000 guibg=#000000 gui=bold
highlight WhichKeySeperator guifg=#00ff00 guibg=#000000
highlight WhichKeyGroup guifg=#0000ff guibg=#000000
highlight WhichKeyDesc guifg=#ffffff guibg=#000000
highlight WhichKeyFloating guifg=#ffff00 guibg=#000000
