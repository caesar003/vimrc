function! ToggleNERDTree()
  if exists("t:NERDTreeIsOpen") && t:NERDTreeIsOpen
    NERDTreeClose
    let t:NERDTreeIsOpen = 0
  else
    NERDTreeFind
    let t:NERDTreeIsOpen = 1
  endif
endfunction

