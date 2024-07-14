"                                                          
"                  _/                                      
"     _/      _/      _/_/_/  _/_/    _/  _/_/    _/_/_/   
"    _/      _/  _/  _/    _/    _/  _/_/      _/          
"     _/  _/    _/  _/    _/    _/  _/        _/           
"_/    _/      _/  _/    _/    _/  _/          _/_/_/      
"
"  .vimrc
"  Author: caesar https://github.com/caesar003
"  Repository: https://github.com/caesar003/vimrc
"  Last Modified: "2024-07-05"
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

source $HOME/.vim/init/scripts/mappings.vim

" {{{ Functions

" {{{ HandleBufferClose
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
" }}}

" {{{ GoToBuffer
function! GoToBuffer()
  call feedkeys(":ls\n:b")
endfunction
" }}}

" {{{ DeleteBuffer
function! DeleteBuffer()
  call feedkeys(":ls\n:bd")
endfunction
" }}}

" {{{ ShowBuffers
let g:popup_id = -1

" Function to show the popup with buffer information
function! ShowBuffers()
  " Get the buffer information
  let buffer_info = TransformBuffersToText()

  " Create the popup with the buffer information
  let g:popup_id = popup_create(buffer_info, {
        \ 'minwidth': 20,
        \ 'minheight': 10,
        \ 'wrap': 1,
        \ 'padding': [1, 1, 1, 1],
        \ 'highlight': 'Normal',
        \ 'border': [1, 1, 1, 1]
        \ })
endfunction
" }}}

" {{{ CloseBuffer
" Function to close the popup using the stored ID
function! CloseBuffers()
  if g:popup_id != -1
    call popup_close(g:popup_id)
    let g:popup_id = -1
  endif
endfunction
" }}}

" {{{ TransformBuffersToText
function! TransformBuffersToText()
  " Capture the output of the :ls command
  let buffers_output = execute('ls')

  " Split the output into individual lines
  let lines = split(buffers_output, "\n")

  " Initialize an empty list to hold buffer information
  let buffers_list = []

  " Iterate over the lines to extract buffer information
  " {{{
  for line in lines
    if line =~ '^\s*\d'
      let parts = split(line)
      let buffer_number = parts[0]

      " Extract the buffer name using matchlist
      let buffer_name_match = matchlist(line, '^\s*\d\+\s\+\(.*\)\s\+"\(.*\)"')
      if len(buffer_name_match) > 2
        let buffer_full_path = buffer_name_match[2]
        let buffer_name = fnamemodify(buffer_full_path, ':t')
        let parent_directory = fnamemodify(buffer_full_path, ':h:t')
      else
        let buffer_name = ''
        let parent_directory = ''
      endif

      " Create a string with buffer number, name, and optionally parent directory
      if parent_directory != '' && parent_directory != '.'
        let buffer_info = buffer_number . ' ' . buffer_name . ' (' . parent_directory . ')'
      else
        let buffer_info = buffer_number . ' ' . buffer_name
      endif

      " Add the buffer information to the list
      call add(buffers_list, buffer_info)
    endif
  endfor
  " }}}

  " Return the buffer information as a list
  return buffers_list
endfunction

" }}}

" {{{ ToggleBuffers
function! ToggleBuffers()
  if g:popup_id == -1
    call ShowBuffers()
  else
    call CloseBuffers()
  endif
endfunction

" }}}

" {{{ Switch and delete buffer
" Function to switch to the next buffer before closing the current buffer

function! SwitchAndDeleteBuffer()
  " Try to switch to the next buffer
  if buflisted(bufnr('#'))
    execute 'b#'
  elseif buflisted(bufnr('+'))
    execute 'bn'
  elseif buflisted(bufnr('-'))
    execute 'bp'
  else
    echo "No other buffers available"
    return
  endif

  " Delete the previous buffer
  execute 'bd#'
endfunction
" }}} 


" BufOnly.vim, written in vim9script, needed to be in separate file
source $HOME/.vim/init/scripts/functions/init.vim


" {{{ Custom commands
command! Noh nohlsearch
command! NOH nohlsearch
command! ShowBuffers call ShowBuffers()
command! CloseBuffers call CloseBuffers()
command! Bd call SwitchAndDeleteBuffer()
" }}}

" }}}

" {{{ Plugin configurations

" {{{ Netrw Settings
let g:netrw_banner=0                        " disable annoying banner
let g:netrw_liststyle=3                     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide() 
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" }}}

" {{{ Floaterm configurations
let g:floaterm_height=0.8
let g:floaterm_width=0.8
let g:floaterm_title=' Floaterm: ($1|$2) '
let g:floaterm_borderchars='─│─│╭╮╯╰'
" }}}

" {{{ Tmux navigator and Highlighted Yank configurations
let g:tmux_navigator_no_mappings = 1
let g:highlightedyank_highlight_duration = 300
" }}}

" {{{ JavaScript configurations
let javaScript_fold=1
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1
" }}}

" {{{ GitGutter configurations
" Set the highlight colors for GitGutter signs
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
" }}}

" {{{ Go configurations
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

" {{{ Startify configurations
" {{{ ascii art
let g:ascii = [
      \ '                            oooo$$$$$$$$$$$$oooo                              ',
      \ '                        oo$$$$$$$$$$$$$$$$$$$$$$$$o                           ',
      \ '                     oo$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o         o$   $$ o$     ',
      \ '     o $ oo        o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o       $$ $$ $$o$    ',
      \ '  oo $ $ "$      o$$$$$$$$$    $$$$$$$$$$$$$    $$$$$$$$$o       $$$o$$o$     ',
      \ '  "$$$$$$o$     o$$$$$$$$$      $$$$$$$$$$$      $$$$$$$$$$o    $$$$$$$$      ',
      \ '    $$$$$$$    $$$$$$$$$$$      $$$$$$$$$$$      $$$$$$$$$$$$$$$$$$$$$$$      ',
      \ '    $$$$$$$$$$$$$$$$$$$$$$$    $$$$$$$$$$$$$    $$$$$$$$$$$$$$  """$$$        ',
      \ '     "$$$""""$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     "$$$       ',
      \ '      $$$   o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     "$$$o     ',
      \ '     o$$"   $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$       $$$o    ',
      \ '     $$$    $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$" "$$$$$$ooooo$$$$o  ',
      \ '    o$$$oooo$$$$$  $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$   o$$$$$$$$$$$$$$$$$ ',
      \ '    $$$$$$$$"$$$$   $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     $$$$""""""""       ',
      \ '   """"       $$$$    "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"      o$$$                ',
      \ '              "$$$o     """$$$$$$$$$$$$$$$$$$"$$"         $$$                 ',
      \ '                $$$o          "$$""$$$$$$""""           o$$$                  ',
      \ '                 $$$$o                                o$$$"                   ',
      \ '                  "$$$$o      o$$$$$$o"$$$$o        o$$$$                     ',
      \ '                    "$$$$$oo     ""$$$$o$$$$$o   o$$$$""                      ',
      \ '                       ""$$$$$oooo  "$$$o$$$$$$$$$"""                         ',
      \ '                          ""$$$$$$$oo $$$$$$$$$$                              ',
      \ '                                  """"$$$$$$$$$$$                             ',
      \ '                                      $$$$$$$$$$$$                            ',
      \ '                                       $$$$$$$$$$"                            ',
      \ '                                        "$$$""""                              ',
      \ '',
      \ ]
" }}}
let g:startify_custom_header = g:ascii + startify#fortune#boxed()
let g:startify_bookmarks = [
      \ {'v': '~/.vim'}, 
      \ {'y': '~/phb'}, 
      \ {'x': '~/wms/Container-Frontend'}, 
      \ {'a' : '~/wms/DataMaster-Frontend'},
      \ ]
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

" {{{ Vim Markdown Preview configurations
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

" {{{ Vim Closetags configurations
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
let g:closetag_filetypes = 'html,xhtml,phtml,javascriptreact,typescriptreact'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
" }}}

" {{{ Vim Markdown configurations
let g:vim_markdown_folding_disabled = 0
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
