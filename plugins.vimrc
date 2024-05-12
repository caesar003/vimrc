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
" let g:NERDTreeWinPos = "right"
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
" autocmd FileType java JCEnable
