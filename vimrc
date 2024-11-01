"                                                          
"                  _/                                      
"     _/      _/      _/_/_/  _/_/    _/  _/_/    _/_/_/   
"    _/      _/  _/  _/    _/    _/  _/_/      _/          
"     _/  _/    _/  _/    _/    _/  _/        _/           
"_/    _/      _/  _/    _/    _/  _/          _/_/_/      
"
"  .vimrc
"  Author: caesar - https://github.com/caesar003
"  Repository: https://github.com/caesar003/vimrc
"  Last Modified: "2024-10-31"
"

let vimplug_exists=expand('~/.vim/autoload/plug.vim')
let curl_exists=expand('curl')

if !filereadable(vimplug_exists)
  if !executable(curl_exists)
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Ensure ~/.vim/swapfiles directory exists
if !isdirectory(expand("~/.vim/swapfiles"))
  call mkdir(expand("~/.vim/swapfiles"), "p")
endif


echom '>^.^<'

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'ryanoasis/vim-devicons'
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
Plug 'prettier/vim-prettier', {  
      \ 'do': 'yarn install', 
      \ 'for': [ 'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'jwalton512/vim-blade', { 'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'vim-scripts/svg.vim'
Plug 'vim-scripts/vim-javacomplete2', { 'for': 'java' } 
Plug 'vim-scripts/loremipsum'
Plug 'bagrat/vim-buffet'
Plug 'caesar003/vim-closebuffer'
Plug 'Reewr/vim-monokai-phoenix'
Plug 'vim-scripts/BufOnly.vim'
call plug#end()

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
set showmode
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
set showtabline=2
set showcmd
set termguicolors
set belloff=all
set visualbell t_vb=
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
set t_ZH=^[[3m
set t_ZR=^[[23m
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

set background=dark 
colorscheme monokai-phoenix
" colorscheme ubuntu

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
  hi Visual guifg=#000000 guibg=#FFA500
  hi Search guifg=#000000 guibg=#FFA500
  hi Cursor guifg=#FFA500 guibg=#1a1a1a
else
  hi Visual ctermfg=208 ctermbg=234
  hi Search ctermfg=208 ctermbg=234
  hi Cursor ctermfg=208 ctermbg=234
endif

if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif
if has("termguicolors")
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif

autocmd FileType javascript setlocal foldmethod=syntax
autocmd FileType html setlocal foldmethod=indent
autocmd FileType css setlocal foldmethod=syntax
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType json setlocal foldmethod=syntax
autocmd FileType sh setlocal foldmethod=syntax

let mapleader=' ' 

nnoremap <silent><leader>e :call ToggleNERDTree()<CR>
nnoremap <leader>q :q<CR> 
nnoremap <leader>Q :q!<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>E :e<space>
nnoremap <silent><leader>n :enew<CR> 

nnoremap <silent> <leader><Up> :resize +5<CR>
nnoremap <silent> <leader><Down> :resize -5<CR>
nnoremap <silent> <leader><Right> :vertical resize +5<CR>
nnoremap <silent> <leader><Left> :vertical resize -5<CR>

nnoremap <silent> <leader>Ct :e ~/.config/tmux/tmux.conf<CR>
nnoremap <silent> <leader>Ck :e ~/.config/kitty/kitty.conf<CR>
nnoremap <silent> <leader>Cv :e $MYVIMRC<CR>
nnoremap <silent> <leader>Cr :so $MYVIMRC<CR>
nnoremap <silent> <leader>fw :Rg<CR>
nnoremap <silent> <leader>fg :GitFiles<CR>
nnoremap <silent> <leader>ff :Files<CR>
nnoremap <leader>ft :set filetype=

nnoremap <silent>[b :bp<CR>
nnoremap <silent>]b :bn<CR>
nnoremap <silent> <leader>c :call CloseBuffer()<CR>
nnoremap <silent> <leader>b- :b#<CR>
nnoremap <silent> <leader>bo :BufOnly<CR>
nnoremap <leader>bO :BufOnly<space>
nnoremap <leader>B :Buffers<cr>
nnoremap <silent> \| :vsplit<CR>
nnoremap <silent> \ :split<CR>

nnoremap <silent> <leader>pc :PlugClean<CR>
nnoremap <silent> <leader>pu :PlugUpdate<CR>
nnoremap <silent> <leader>pi :PlugInstall<CR>

nnoremap <silent> <c-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <c-j> :TmuxNavigateDown<CR>
nnoremap <silent> <c-k> :TmuxNavigateUp<CR>
nnoremap <silent> <c-l> :TmuxNavigateRight<CR>
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
nnoremap <leader>sc :SClose<CR>
nnoremap <leader>ss :SSave<CR>
nnoremap <leader>sd :SDelete<CR>
nnoremap <silent> <leader>/ :Commentary<CR>
vnoremap <silent> <leader>/ :Commentary<CR> 

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

nnoremap <leader>gs :G status<CR>   " Open Git status window
nnoremap <leader>gd :G diff<CR>     " View working directory diff
nnoremap <leader>gp :G pull<CR>     " Pull changes from remote
nnoremap <leader>gc :G commit<CR>   " Open commit message editor
nnoremap <leader>ga :G add<CR>      " Stage current file for commit
nnoremap <leader>gb :G branch<CR>   " List branches
nnoremap <leader>gf :G log<CR>      " View commit history
nnoremap <leader>gh :help fugitive<CR>   " Reference fugitive help within vim
nnoremap <silent> <leader><leader> za
nnoremap <silent> <leader>uw :set wrap!<CR>            " Toggle Wrap
nnoremap <silent> <leader>un :set number!<CR>          " Toggle number
nnoremap <silent> <leader>ur :set relativenumber!<CR>  " Toggle relative numbering
nnoremap <silent> <leader>H :execute 'Startify'<CR>    " Show [H]ome screen

nnoremap <silent><leader>i :f<CR>                      " Prints file info
inoremap <silent>jj <esc>

function! ToggleNERDTree()
  if tabpagewinnr(tabpagenr(), "$") == 1 && getbufvar(winbufnr(1), "&filetype") ==# 'nerdtree'
    return
  endif

  if exists("t:NERDTreeIsOpen") && t:NERDTreeIsOpen
    NERDTreeClose
    let t:NERDTreeIsOpen = 0
  else
    if empty(expand('%:p'))  
      NERDTree  
    else
      NERDTreeFind  
    endif
    let t:NERDTreeIsOpen = 1
  endif
endfunction


command! Noh nohlsearch
command! NOH nohlsearch
command! Ls ls
command! LS ls

let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

let g:floaterm_height=0.8
let g:floaterm_width=0.8
let g:floaterm_title=' Floaterm: ($1|$2) '
let g:floaterm_borderchars='─│─│╭╮╯╰'

let g:tmux_navigator_no_mappings = 1
let g:highlightedyank_highlight_duration = 300

let javaScript_fold=1
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1

highlight GitGutterAdd    guifg=#8bbd68 guibg=NONE  ctermfg=107 ctermbg=NONE
highlight GitGutterChange guifg=#81a2be guibg=NONE  ctermfg=109 ctermbg=NONE
highlight GitGutterDelete guifg=#cc6666 guibg=NONE  ctermfg=167 ctermbg=NONE

let g:gitgutter_async = 1
let g:gitgutter_sign_added = '█|'
let g:gitgutter_sign_modified = '█⫶'
let g:gitgutter_sign_removed = '█▁'
let g:gitgutter_sign_removed_first_line = '█▔'
let g:gitgutter_sign_modified_removed = "█▟"
let g:gitgutter_override_sign_column_highlight = 0

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

let g:ascii = [
      \'             ······································',
      \'             : █████   █████  ███                 :',
      \'             :░░███   ░░███  ░░░                  :',
      \'             : ░███    ░███  ████  █████████████  :',
      \'             : ░███    ░███ ░░███ ░░███░░███░░███ :',
      \'             : ░░███   ███   ░███  ░███ ░███ ░███ :',
      \'             :  ░░░█████░    ░███  ░███ ░███ ░███ :',
      \'             :    ░░███      █████ █████░███ █████:',
      \'             :     ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░ :',
      \'             ······································',
      \]

let g:startify_custom_header = g:ascii + startify#fortune#boxed()


let g:startify_session_dir = '~/.vim/sessions'
let g:startify_session_persistence = 0
let g:startify_files_number = 5

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'files',     'header': ['   Recent Files']   },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

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

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
let g:closetag_filetypes = 'html,xhtml,phtml,javascriptreact,typescriptreact'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

let g:vim_markdown_folding_disabled = 0
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_folding_level = 6
let g:vim_markdown_conceal = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_fenced_languages = ['html', 'python', 'javascript=js', 'typescript', 'lua']
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1


let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"


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

let g:NERDTreeIgnore = ['\.git$', '\.DS_Store$', '\.log$', 'node_modules', '\.env$']
