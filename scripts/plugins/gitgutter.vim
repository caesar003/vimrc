" Set the highlight colors for GitGutter signs
highlight GitGutterAdd    guifg=#8bbd68 guibg=NONE  ctermfg=107 ctermbg=NONE
highlight GitGutterChange guifg=#81a2be guibg=NONE  ctermfg=109 ctermbg=NONE
highlight GitGutterDelete guifg=#cc6666 guibg=NONE  ctermfg=167 ctermbg=NONE

" GitGutter
let g:gitgutter_async = 1
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '✗'
let g:gitgutter_sign_removed_first_line = '➜'
let g:gitgutter_sign_removed_above_and_below = '⬍'
let g:gitgutter_sign_modified_removed = '≠'

let g:gitgutter_override_sign_column_highlight = 0
