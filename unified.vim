echom '>^.^<'              
set nocompatible
syntax enable
filetype plugin indent on
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
set laststatus=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set smartindent
set ruler
set belloff=all
set visualbell t_vb=
set foldmethod=indent
set foldcolumn=1
set foldlevelstart=99
set noshowmode
set wildmenu
set wildmode=list:longest,full
set showtabline=1
set hidden
set notimeout
set background=dark
set directory=~/.vim/swapfiles//

colorscheme sorbet 


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

hi Floaterm guibg=black
hi FloatermBorder guibg=orange guifg=cyan

set termguicolors

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


let mapleader=' ' 
nnoremap <silent> <leader>e :call ToggleNERDTree()<cr>

" Quick exit 
nnoremap <leader>q :q<cr> 
" Exit discarding changes
nnoremap <leader>Q :q!<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>E :e<space>
nnoremap <leader>n :enew<cr> 

nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> ^ g^
nnoremap <silent> 0 g0

" Disable arrow keys
nnoremap <up> <NOP>
nnoremap <down> <NOP>
nnoremap <right> <NOP>
nnoremap <left> <NOP>

nnoremap <C-Up> :resize +5<CR>
nnoremap <C-Down> :resize -5<CR>
nnoremap <C-Right> :vertical resize +5<CR>
nnoremap <C-Left> :vertical resize -5<CR>

nnoremap <silent> <leader>t :below terminal<cr>
nnoremap <silent> <leader>T :e ~/.config/tmux/tmux.conf<cr>
nnoremap <silent> <leader>K :e ~/.config/kitty/kitty.conf<cr>
nnoremap <silent> <leader>vv :e $MYVIMRC<cr>
nnoremap <silent> <leader>vs :so $MYVIMRC<cr>

nnoremap <silent>[b :bp<cr>
nnoremap <silent>]b :bn<cr>

nnoremap <leader>fw :Rg<cr>
nnoremap <leader>fg :GitFiles<cr>
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fr :Rg<cr>

nnoremap <leader>bl :buffers<cr>
nnoremap <leader>bh :sb<cr>
nnoremap <leader>bv :vsp<cr>
nnoremap <leader>ba :%bd\|e#\|bd#<cr>
nnoremap <silent> <leader>c :bdelete<cr>

" Close all other buffers
nnoremap <leader>bo :BufOnly<cr>
" Close all but the specified
nnoremap <leader>bO :BufOnly<space>

nnoremap <leader>yy "+yy
vnoremap <leader>y "+y

nnoremap <silent> <leader>i :f<cr>

" Quick Escape
inoremap <silent> jj <esc>

" Quick Split
nnoremap <silent> \| :vsplit<cr>
nnoremap <silent> \\ :split<cr>

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

" Float Term Management

nnoremap <silent> <F7> :FloatermNew<CR>
nnoremap <silent> <F8> :FloatermPrev<CR>
nnoremap <silent> <F9> :FloatermNext<CR>
nnoremap <silent> <F6> :FloatermToggle<CR>

tnoremap <silent> <F7> <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermPrev<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermNext<CR>
tnoremap <silent> <F6> <C-\><C-n>:FloatermToggle<CR>

nnoremap <leader>sr :SessionOpen<space>
nnoremap <leader>sc :SessionClose<cr>
nnoremap <leader>ss :SessionSave<cr>

" Comment
nnoremap <silent> <leader>/ :Commentary<cr>
vnoremap <silent> <leader>/ :Commentary<cr> 

" Quick fold
nnoremap <leader><leader> za

function! ToggleNERDTree()
  if exists("t:NERDTreeIsOpen") && t:NERDTreeIsOpen
    NERDTreeClose
    let t:NERDTreeIsOpen = 0
  else
    NERDTreeFind
    let t:NERDTreeIsOpen = 1
  endif
endfunction

function! GetFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! GetFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

source $HOME/.vim/init/plugins/init.vim
let javaScript_fold=1
let g:tmux_navigator_no_mappings = 1
let g:highlightedyank_highlight_duration = 300
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_removed_above_and_below = ''
let g:gitgutter_sign_modified_removed = ''

" Cursor shape and blink

" Insert Mode - blinking bar 
let &t_SI = "\e[5 q"

" Normal Mode - blinking block
let &t_EI = "\e[1 q"

" Here are other available options as cheatsheet
" 2 = Solid block
" 3 = blinking underscore
" 4 = solid underscore
" 6 = vertical line

let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1
let g:gitgutter_override_sign_column_highlight = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,*node_modules/
let g:lightline = {
      \ 'mode_map': {
      \ 'n' : 'N',
      \ 'i' : 'I',
      \ 'R' : 'R',
      \ 'v' : 'V',
      \ 'V' : 'V-LINE',
      \ "\<C-v>": 'V-BLOCK',
      \ 'c' : 'C',
      \ 's' : 'S',
      \ 'S' : 'S-LINE',
      \ "\<C-s>": 'S-BLOCK',
      \ 't': 'TERMINAL',
      \ },
      \ 'colorscheme': 'catppuccine_mocha',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filetype': 'GetFiletype',
      \ 'fileformat': 'GetFileFormat'
      \ },
      \ 'component': {
      \ 'lineinfo': '%3l:%-2v%<',
      \}
      \}


highlight GitGutterAdd    guifg=#b5bd68 guibg=NONE  ctermfg=107 ctermbg=NONE
highlight GitGutterChange guifg=#81a2be guibg=NONE  ctermfg=109 ctermbg=NONE
highlight GitGutterDelete guifg=#cc6666 guibg=NONE  ctermfg=167 ctermbg=NONE


" Set the statusline with various components
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Breakdown:
" %F - Full path to the file
" %m - Modified flag (shows [+] if the file is modified)
" %r - Read-only flag (shows [RO] if the file is read-only)
" %h - Help file flag (shows [help] if the file is a help file)
" %w - Preview flag (shows [preview] if the file is a preview window)
" %= - Separates left-aligned and right-aligned parts of the statusline
" %{&ff} - Shows the file format (e.g., unix, dos, mac)
" %Y - File type (e.g., vim, python, etc.)
" (line %l/%L, col %c) - Shows the current line, total lines, and current column

" Sample output:
" /path/to/file.txt[+] [RO] [help] [preview]  unix/vim (line 10/200, col 5)
" Explanation of the sample output:
" - /path/to/file.txt: full path to the current file
" - [+]: file has been modified
" - [RO]: file is read-only
" - [help]: current buffer is a help file
" - [preview]: current buffer is in preview mode
" - unix/vim: file format is 'unix' and file type is 'vim'
" - (line 10/200, col 5): current line is 10 out of 200, current column is 5

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

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
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['node_modules','\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=0
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 30
let g:NERDTreeMinimalUI = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1


set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,*node_modules/

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


autocmd FileType java setlocal omnifunc=javacomplete#Complete
