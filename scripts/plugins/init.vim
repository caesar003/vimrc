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
