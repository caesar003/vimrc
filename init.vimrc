"                                                          
"                  _/                                      
"     _/      _/      _/_/_/  _/_/    _/  _/_/    _/_/_/   
"    _/      _/  _/  _/    _/    _/  _/_/      _/          
"     _/  _/    _/  _/    _/    _/  _/        _/           
"_/    _/      _/  _/    _/    _/  _/          _/_/_/      
"

" Show smiling cat at startup
echom '>^.^<'
set nocompatible
syntax enable
filetype plugin indent on

" =============================================================================
" VIM PLUGIN MANAGER
" =============================================================================

call plug#begin()
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/sessionman.vim'
Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'psliwka/vim-smoothie'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'iamcco/markdown-preview.nvim', {  'for': 'markdown', 'do': 'cd app && npx --yes yarn install' }
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }
Plug 'charlespascoe/vim-go-syntax', { 'for': 'go' }
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
Plug 'voldikss/vim-floaterm'
Plug 'ryanoasis/vim-devicons'

Plug 'OmniSharp/omnisharp-vim', { 'for' : 'cs' }
Plug 'jwalton512/vim-blade', { 'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'vim-scripts/svg.vim'
Plug 'vim-scripts/vim-javacomplete2', { 'for': 'java' } 

call plug#end()

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
set notimeout
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


" =============================================================================
" Mappings
" =============================================================================

let mapleader=' ' 

" NERDTree File Manager 
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

" Resize split window
nnoremap <C-S-J> :resize +5<CR>
nnoremap <C-S-K> :resize -5<CR>
nnoremap <C-S-L> :vertical resize +5<CR>
nnoremap <C-S-H> :vertical resize -5<CR>

nnoremap <silent> <leader>t :below terminal<cr>
nnoremap <silent> <leader>T :e ~/.config/tmux/tmux.conf<cr>
nnoremap <silent> <leader>K :e ~/.config/kitty/kitty.conf<cr>
nnoremap <silent> <leader>vv :e $MYVIMRC<cr>
nnoremap <silent> <leader>vs :so $MYVIMRC<cr>

nnoremap <silent>[b :bp<cr>
nnoremap <silent>]b :bn<cr>

nnoremap <silent><leader>fw :Rg<cr>
nnoremap <silent><leader>fg :GitFiles<cr>
nnoremap <silent><leader>ff :Files<cr>
nnoremap <silent><leader>fb :Buffers<cr>

nnoremap <leader>bl :buffers<cr>
nnoremap <leader>bh :sb<cr>
nnoremap <leader>bv :vsp<cr>
nnoremap <leader>ba :%bd\|e#\|bd#<cr>
nnoremap <silent> <leader>c :call HandleBufferClose()<CR>

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

" Plugin Management
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
nnoremap <silent> <F6> :FloatermToggle<CR>
nnoremap <silent> <F7> :FloatermNew<CR>
nnoremap <silent> <F8> :FloatermPrev<CR>
nnoremap <silent> <F9> :FloatermNext<CR>

tnoremap <silent> <F6> <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <F7> <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermPrev<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermNext<CR>

" Session Management
nnoremap <leader>sr :SessionOpen<space>
nnoremap <leader>sc :SessionClose<cr>
nnoremap <leader>ss :SessionSave<cr>

" Comment
nnoremap <silent> <leader>/ :Commentary<cr>
vnoremap <silent> <leader>/ :Commentary<cr> 

" Quick fold
nnoremap <leader><leader> za

" Toggle Wrap
nnoremap <silent> <leader>uw :set wrap!<cr>

nnoremap <silent> <leader>h :Startify<cr>

function! ToggleNERDTree()
  " Check if there is only one window open and it's NERDTree
  if tabpagewinnr(tabpagenr(), "$") == 1 && getbufvar(winbufnr(1), "&filetype") ==# 'nerdtree'
    return
  endif

  if exists("t:NERDTreeIsOpen") && t:NERDTreeIsOpen
    NERDTreeClose
    let t:NERDTreeIsOpen = 0
  else
    if empty(expand('%:p'))  " Check if the current buffer has a file name
      NERDTree  " Open NERDTree normally
    else
      NERDTreeFind  " Open NERDTree and find the current file
    endif
    let t:NERDTreeIsOpen = 1
  endif
endfunction

function AirlineInit()
  let g:airline_section_c = airline#section#create(['%t'])
endfunction

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

source $HOME/.vim/init/plugins/init.vim

" =============================================================================
" Plugin Configurations
" =============================================================================

" Floaterm Configuration
let g:floaterm_height=0.8
let g:floaterm_width=0.8
let g:floaterm_title=' Floaterm: ($1|$2) '
let g:floaterm_borderchars='─│─│╭╮╯╰'

" VIM + TMUX
let g:tmux_navigator_no_mappings = 1
let g:highlightedyank_highlight_duration = 300

let javaScript_fold=1
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

" VIM AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='term'
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline_mode_map = {
      \ '__'     : '-',
      \ 'c'      : 'C',
      \ 'i'      : 'I',
      \ 'ic'     : 'I',
      \ 'ix'     : 'I',
      \ 'n'      : 'N',
      \ 'multi'  : 'M',
      \ 'ni'     : 'N',
      \ 'no'     : 'N',
      \ 'R'      : 'R',
      \ 'Rv'     : 'R',
      \ 's'      : 'S',
      \ 'S'      : 'S',
      \ ''     : 'S',
      \ 't'      : 'T',
      \ 'v'      : 'V',
      \ 'V'      : 'V-Line',
      \ ''     : 'V-Block',
      \ }

" Set the highlight colors for GitGutter signs
highlight GitGutterAdd    guifg=#8bbd68 guibg=NONE  ctermfg=107 ctermbg=NONE
highlight GitGutterChange guifg=#81a2be guibg=NONE  ctermfg=109 ctermbg=NONE
highlight GitGutterDelete guifg=#cc6666 guibg=NONE  ctermfg=167 ctermbg=NONE

" Go Configuration
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

" GitGutter
let g:gitgutter_async = 1
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '✗'
let g:gitgutter_sign_removed_first_line = '➜'
let g:gitgutter_sign_removed_above_and_below = '⬍'
let g:gitgutter_sign_modified_removed = '≠'

let g:gitgutter_override_sign_column_highlight = 0

" NERDTree
let g:NERDTreeWinPos = 'right'
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['node_modules', 'build', '\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=0
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 30
let g:NERDTreeMinimalUI = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
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


" Startify
let g:ascii = [
      \'                            oooo$$$$$$$$$$$$oooo                              ',
      \'                        oo$$$$$$$$$$$$$$$$$$$$$$$$o                           ',
      \'                     oo$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o         o$   $$ o$     ',
      \'     o $ oo        o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o       $$ $$ $$o$    ',
      \'  oo $ $ "$      o$$$$$$$$$    $$$$$$$$$$$$$    $$$$$$$$$o       $$$o$$o$     ',
      \'  "$$$$$$o$     o$$$$$$$$$      $$$$$$$$$$$      $$$$$$$$$$o    $$$$$$$$      ',
      \'    $$$$$$$    $$$$$$$$$$$      $$$$$$$$$$$      $$$$$$$$$$$$$$$$$$$$$$$      ',
      \'    $$$$$$$$$$$$$$$$$$$$$$$    $$$$$$$$$$$$$    $$$$$$$$$$$$$$  """$$$        ',
      \'     "$$$""""$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     "$$$       ',
      \'      $$$   o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     "$$$o     ',
      \'     o$$"   $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$       $$$o    ',
      \'     $$$    $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$" "$$$$$$ooooo$$$$o  ',
      \'    o$$$oooo$$$$$  $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$   o$$$$$$$$$$$$$$$$$ ',
      \'    $$$$$$$$"$$$$   $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     $$$$""""""""       ',
      \'   """"       $$$$    "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"      o$$$                ',
      \'              "$$$o     """$$$$$$$$$$$$$$$$$$"$$"         $$$                 ',
      \'                $$$o          "$$""$$$$$$""""           o$$$                  ',
      \'                 $$$$o                                o$$$"                   ',
      \'                  "$$$$o      o$$$$$$o"$$$$o        o$$$$                     ',
      \'                    "$$$$$oo     ""$$$$o$$$$$o   o$$$$""                      ',
      \'                       ""$$$$$oooo  "$$$o$$$$$$$$$"""                         ',
      \'                          ""$$$$$$$oo $$$$$$$$$$                              ',
      \'                                  """"$$$$$$$$$$$                             ',
      \'                                      $$$$$$$$$$$$                            ',
      \'                                       $$$$$$$$$$"                            ',
      \'                                        "$$$""""                              ',
      \]

let g:startify_custom_header = g:ascii + startify#fortune#boxed()
let g:startify_bookmarks = [{'y': '~/phb'}]

" Markdown
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

autocmd VimEnter * call AirlineInit()
autocmd FileType java setlocal omnifunc=javacomplete#Complete
