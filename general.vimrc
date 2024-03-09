" Basic settings
set conceallevel=1             " Conceal text (e.g., for syntax highlighting)
set number relativenumber      " Show line numbers and relative line numbers
set encoding=utf-8             " Set the encoding for the file
set fileencoding=utf-8         " Set the encoding when writing the file
set fileencodings=utf-8        " Specify the order of file encodings to try
set ttyfast                    " Optimize for fast terminal connections
set backspace=indent,eol,start " Allow backspacing over auto-indent, line breaks, and start of insert
set tabstop=2                  " Set the number of spaces a tab character counts for
set softtabstop=0              " Set the number of spaces for a soft tab
set shiftwidth=2               " Set the number of spaces to use for (auto)indent
set expandtab                  " Convert tabs to spaces
set linebreak                  " Wrap long lines at a character in 'breakat'
set wrap                       " Display long lines as multiple screen lines
set breakindent                " Enable extra indent in wrapped lines
set breakindentopt=shift:2     " Set the extra indent amount for wrapped lines
set laststatus=2               " Show the status line with some info
set hlsearch                   " Highlight search results
set incsearch                  " Incremental search
set ignorecase                 " Ignore case in search patterns
set smartcase                  " Override 'ignorecase' if search pattern has uppercase
set smartindent
set ruler                      " Show the cursor position all the time
set belloff=all                " Disable most bells and beeps
set visualbell t_vb=           " Use visual bell instead of beeping

set foldmethod=syntax          " Enable folding based on syntax
set foldcolumn=1               " Show a column with fold indicators
set foldlevelstart=99          " Start with all folds closed
set background=dark            " Set background color to dark
set noshowmode                 " Do not show mode (insert, visual, etc.) in the status line
set wildmenu                   " Enhanced command-line completion
set wildmode=list:longest,full " Command-line completion mode

set showtabline=1              " Always show the tabline, even if there's only one tab
set hidden                     " Allow switching buffers with unsaved changes
set notimeout

let g:netrw_banner=0        " disable annoying banner
let g:netrw_winsize=25
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_bufsettings = 'noma nu rnu'


colorscheme 1989

" Transparent background
let g:disable_bg = 1

hi Normal guibg=NONE ctermbg=NONE
hi NonText ctermbg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi LineNr ctermbg=NONE guibg=NONE

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

