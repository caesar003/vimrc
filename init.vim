"                                                          
"                  _/                                      
"     _/      _/      _/_/_/  _/_/    _/  _/_/    _/_/_/   
"    _/      _/  _/  _/    _/    _/  _/_/      _/          
"     _/  _/    _/  _/    _/    _/  _/        _/           
"_/    _/      _/  _/    _/    _/  _/          _/_/_/      
"

" Show smiling cat at start up
echom '>^.^<'

set nocompatible
syntax on
filetype plugin indent on

" {{{ Plugins
call plug#begin()
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'psliwka/vim-smoothie'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
Plug 'voldikss/vim-floaterm'
Plug 'alvan/vim-closetag'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown', { 'for': 'markdown' }
Plug 'iamcco/markdown-preview.nvim', {  'for': 'markdown', 'do': 'cd app && npx --yes yarn install' }
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }
Plug 'charlespascoe/vim-go-syntax', { 'for': 'go' }

Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'OmniSharp/omnisharp-vim', { 'for' : 'cs' }
Plug 'jwalton512/vim-blade', { 'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'vim-scripts/svg.vim'
Plug 'vim-scripts/vim-javacomplete2', { 'for': 'java' } 
call plug#end()
" }}}

" {{{ Settings
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
set notimeout
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
set foldmethod=indent
set foldcolumn=1
set foldlevelstart=99
set showtabline=1
set showcmd
set termguicolors

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

" This contains colorscheme and background for easier theme switch
source $HOME/.vim/init/scripts/theme.vim 

set belloff=all
set visualbell t_vb=
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
set t_ZH=^[[3m
set t_ZR=^[[23m

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

if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

if has("termguicolors")
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif

let g:netrw_banner=0                        " disable annoying banner
let g:netrw_liststyle=3                     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" }}}

" {{{ Mappings
let mapleader=' ' 
nnoremap <leader>e :Ex<cr>
nnoremap <leader>q :q<cr> 
nnoremap <leader>Q :q!<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>E :e<space>
nnoremap <silent><leader>n :enew<cr> 

nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
vnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
vnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
xnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
xnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

nnoremap <silent> ^ g^
nnoremap <silent> 0 g0

nnoremap <silent> <leader><Up> :resize +5<CR>
nnoremap <silent> <leader><Down> :resize -5<CR>
nnoremap <silent> <leader><Right> :vertical resize +5<CR>
nnoremap <silent> <leader><Left> :vertical resize -5<CR>

nnoremap <silent> <leader>T :e ~/.config/tmux/tmux.conf<cr>
nnoremap <silent> <leader>K :e ~/.config/kitty/kitty.conf<cr>
nnoremap <silent> <leader>vv :e $MYVIMRC<cr>
nnoremap <silent> <leader>vs :so $MYVIMRC<cr>

nnoremap <silent> <leader>fw :Rg<cr>
nnoremap <silent> <leader>fg :GitFiles<cr>
nnoremap <silent> <leader>ff :Files<cr>
nnoremap <leader>ft :set filetype=

nnoremap <leader>bl :Buffers<cr>
nnoremap <silent>[b :bp<cr>
nnoremap <silent>]b :bn<cr>

nnoremap <silent> <leader>c :call HandleBufferClose()<CR>
nnoremap <silent> <leader>bo :BufOnly<cr>
nnoremap <silent> <leader>bdl :bd#<cr>
nnoremap <silent> <leader>bdL :bd!#<cr>
nnoremap <leader>bO :BufOnly<space>

nnoremap <silent> <leader>i :f<cr>
inoremap <silent> jj <esc>
nnoremap <silent> \| :vsplit<cr>
nnoremap <silent> \ :split<cr>

nnoremap <silent> <leader>pc :PlugClean<cr>
nnoremap <silent> <leader>pu :PlugUpdate<cr>
nnoremap <silent> <leader>pi :PlugInstall<cr>

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

tnoremap <silent> <c-h> <c-w>h
tnoremap <silent> <c-j> <c-w>j
tnoremap <silent> <c-k> <c-w>k
tnoremap <silent> <c-l> <c-w>l

nnoremap <silent> <F6> :FloatermToggle<CR>
nnoremap <silent> <F7> :FloatermNew<CR>
nnoremap <silent> <F8> :FloatermPrev<CR>
nnoremap <silent> <F9> :FloatermNext<CR>
tnoremap <silent> <F6> <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <F7> <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermPrev<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermNext<CR>

nnoremap <leader>sr :SLoad<space>
nnoremap <leader>sc :SClose<cr>
nnoremap <leader>ss :SSave<cr>
nnoremap <leader>sd :SDelete<cr>

nnoremap <silent> <leader>/ :Commentary<cr>
vnoremap <silent> <leader>/ :Commentary<cr> 

nnoremap <silent> <leader><leader> za
nnoremap <silent> <leader>uw :set wrap!<cr>
nnoremap <silent> <leader>un :set number!<cr>
nnoremap <silent> <leader>ur :set relativenumber!<cr>
nnoremap <silent> <leader>H :execute 'Startify'<cr>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

" Git fugitive mappings
nnoremap <leader>gs :Gstatus<cr>    " Open Git status window
nnoremap <leader>gd :G diff<cr>     " View working directory diff
nnoremap <leader>gp :G pull<cr>     " Pull changes from remote
nnoremap <leader>gc :G commit<cr>   " Open commit message editor
nnoremap <leader>ga :G add<cr>      " Stage current file for commit
nnoremap <leader>gb :G branch<cr>   " List branches
nnoremap <leader>gf :G log<cr>      " View commit history

" Reference fugitive help within vim
nnoremap <leader>gh :help fugitive<cr>
" }}}

" {{{ Functions
function! HandleBufferClose()
  " Check if the buffer has unsaved changes
  if &modified
    " Prompt the user
    echo 'Current buffer has unsaved changes. Save? [y]es/[n]o/[C]ancel: '
    let l:response = nr2char(getchar())

    " Handle the user's response
    if l:response == 'y' || l:response == 'Y'
      " Save the buffer and then delete it
      write
      bdelete
    elseif l:response == 'n' || l:response == 'N'
      " Discard changes and delete the buffer
      set nomodified
      bdelete!
    else
      " Cancel the action
      " echo 'Buffer close canceled.'
    endif
  else
    " No unsaved changes, just delete the buffer
    bdelete
  endif
endfunction

" BufOnly.vim, written in vim9script, needed to be in separate file
source $HOME/.vim/init/scripts/functions/init.vim

command! Noh nohlsearch
command! NOH nohlsearch
" }}}

" {{{ Plugins Configurations
" {{{ Floaterm Configuration
let g:floaterm_height=0.8
let g:floaterm_width=0.8
let g:floaterm_title=' Floaterm: ($1|$2) '
let g:floaterm_borderchars='─│─│╭╮╯╰'
" }}}

" {{{ VIM + TMUX
let g:tmux_navigator_no_mappings = 1
let g:highlightedyank_highlight_duration = 300
" }}}

" {{{ JAVASCRIPTT
let javaScript_fold=1
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1
" }}}

" {{{ GitGutter
" Set the highlight colors for GitGutter signs
highlight GitGutterAdd    guifg=#8bbd68 guibg=NONE  ctermfg=107 ctermbg=NONE
highlight GitGutterChange guifg=#81a2be guibg=NONE  ctermfg=109 ctermbg=NONE
highlight GitGutterDelete guifg=#cc6666 guibg=NONE  ctermfg=167 ctermbg=NONE

let g:gitgutter_async = 1
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '✗'
let g:gitgutter_sign_removed_first_line = '➜'
let g:gitgutter_sign_removed_above_and_below = '⬍'
let g:gitgutter_sign_modified_removed = '≠'
let g:gitgutter_override_sign_column_highlight = 0
" }}}

" {{{ Go
let g:go_highlight_parens = 1
let g:go_highlight_fields = 1
let g:go_highlight_type_parameters = 'ctermfg=4 cterm=italic'
let g:go_syntax_enable = 1
let g:go_highlight_function_calls = 'Type'
let g:go_highlight_variable_declarations = 1
let g:go_highlight_struct_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_builtins = 1
let g:go_fold_decl_blocks = 1
let g:go_fold_function_blocks = 1
let g:go_fold_struct_blocks = 1
let g:go_fold_interface_blocks = 1
" }}}

" {{{ Startify
let g:ascii = [
      \ "          ________ ++     ________ ",
      \ "         /vvvvvvvv\\++++  /vvvvvvvv\\",
      \ "         \\vvvvvvvv/++++++\\vvvvvvvv/",
      \ "          |vvvvvv|++++++++/vvvvv/'",
      \ "          |vvvvvv|++++++/vvvvv/'",
      \ "         +|vvvvvv|++++/vvvvv/'+",
      \ "       +++|vvvvvv|++/vvvvv/'+++++",
      \ "     +++++|vvvvvv|/vvvvv/'+++++++++",
      \ "       +++|vvvvvvvvvvv/'+++++++++",
      \ "         +|vvvvvvvvv/'+++++++++",
      \ "          |vvvvvvv/'+++++++++",
      \ "          |vvvvv/'+++++++++",
      \ "          |vvv/'+++++++++",
      \ "          'v/'   ++++++",
      \ "                   ++",
      \ ]

let g:startify_custom_header = g:ascii + startify#fortune#boxed()
let g:startify_bookmarks = [{'y': '~/phb'}]
let g:startify_session_dir = '~/.vim/sessions'
let g:startify_session_persistence = 0
let g:startify_files_number = 5

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'files',     'header': ['   Recent Files']   },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]
" }}}

" {{{ Markdown
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle',
      \ 'hide_yaml_meta': 1,
      \ 'sequence_diagrams': {},
      \ 'flowchart_diagrams': {},
      \ 'content_editable': v:false,
      \ 'disable_filename': 0,
      \ 'toc': {}
      \ }

let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_images_path = '/home/caesar/.markdown_images'
let g:mkdp_filetypes = ['markdown']
let g:mkdp_theme = 'dark'
let g:mkdp_combine_preview = 0
let g:mkdp_combine_preview_auto_refresh = 1
" }}}

" {{{ Vim CloseTags
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
let g:closetag_filetypes = 'html,xhtml,phtml,javascriptreact,typescriptreact'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_folding_level = 6
let g:vim_markdown_conceal = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_fenced_languages = ['html', 'python', 'javascript=js', 'typescript']
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
" }}}
" }}}
