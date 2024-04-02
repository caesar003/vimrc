echom '>^.^<'              
set nocompatible
syntax enable
filetype plugin on

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
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'psliwka/vim-smoothie'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }
Plug 'charlespascoe/vim-go-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
Plug 'voldikss/vim-floaterm'
call plug#end()

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



let mapleader=' ' 
nnoremap <silent> <leader>e :call ToggleNERDTree()<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>Q :q!<cr>
nnoremap <leader>E :e<space>
nnoremap <leader>n :enew<cr> 
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> ^ g^
nnoremap <silent> 0 g0
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
nnoremap <leader>fb :Buf<cr>
nnoremap <leader>fr :Rg<cr>
nnoremap <leader>bl :buffers<cr>
nnoremap <leader>bh :sb<cr>
nnoremap <leader>bv :vsp<cr>
nnoremap <leader>ba :%bd\|e#\|bd#<cr>
nnoremap <leader>c :bdelete<cr>
nnoremap <leader>yy "+yy
vnoremap <leader>y "+y
nnoremap <silent> <leader>i :f<cr>
nnoremap <leader>I :call InsertFileInfo()<CR>
inoremap <silent> jj <esc>
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
nnoremap <silent> <F7> :FloatermNew<CR>
nnoremap <silent> <F8> :FloatermPrev<CR>
nnoremap <silent> <F9> :FloatermNext<CR>
nnoremap <silent> <F12> :FloatermToggle<CR>
tnoremap <silent> <F7> <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermPrev<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermNext<CR>
tnoremap <silent> <F12> <C-\><C-n>:FloatermToggle<CR>
nnoremap <leader>sr :SessionOpen<space>
nnoremap <leader>sc :SessionClose<cr>
nnoremap <leader>ss :SessionSave<cr>
nnoremap <silent> <leader>/ :Commentary<cr>
vnoremap <silent> <leader>/ :Commentary<cr> 

function! ToggleNERDTree()
  if exists("t:NERDTreeIsOpen") && t:NERDTreeIsOpen
    NERDTreeClose
    let t:NERDTreeIsOpen = 0
  else
    NERDTreeFind
    let t:NERDTreeIsOpen = 1
  endif
endfunction

let javaScript_fold=1
let g:tmux_navigator_no_mappings = 1
let g:highlightedyank_highlight_duration = 300
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_removed_above_and_below = ''
let g:gitgutter_sign_modified_removed = ''
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
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
      \ 'V' : 'V-Line',
      \ "\<C-v>": 'V-Block',
      \ 'c' : 'C',
      \ 's' : 'S',
      \ 'S' : 'SL',
      \ "\<C-s>": 'SB',
      \ 't': 'T',
      \ },
      \ 'colorscheme': 'default',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ 'component': {
      \ 'lineinfo': '%3l:%-2v%<',
      \}
      \}
highlight GitGutterAdd    guifg=#b5bd68 guibg=NONE  ctermfg=107 ctermbg=NONE
highlight GitGutterChange guifg=#81a2be guibg=NONE  ctermfg=109 ctermbg=NONE
highlight GitGutterDelete guifg=#cc6666 guibg=NONE  ctermfg=167 ctermbg=NONE
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,*node_modules/
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
