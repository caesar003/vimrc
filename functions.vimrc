" Function to toggle NERDTree
function! ToggleNERDTree()
  if exists("t:NERDTreeIsOpen") && t:NERDTreeIsOpen
    NERDTreeClose
    let t:NERDTreeIsOpen = 0
  else
    NERDTreeFind
    let t:NERDTreeIsOpen = 1
  endif
endfunction

function! NextColor(next)
  let current_scheme = g:colors_name
  let color_schemes = getcompletion('', 'color')
  let current_index = index(color_schemes, current_scheme)
  let next_index = (a:next ? (current_index + 1) : (current_index - 1 + len(color_schemes))) % len(color_schemes)

  let next_scheme = color_schemes[next_index]
  execute 'colorscheme ' . next_scheme
endfunction


" Function to insert file information at the top of the buffer
function! InsertFileInfo()
    call setline(1, '// File: ' . expand('%'))
endfunction
