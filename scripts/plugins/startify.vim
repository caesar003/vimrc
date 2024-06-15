" Startify
let g:ascii = [
      \ '                     __',
      \ '             .--.--.|__|.--------.',
      \ '             |  |  ||  ||        |',
      \ '              \___/ |__||__|__|__|',
      \ ''
      \]

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

