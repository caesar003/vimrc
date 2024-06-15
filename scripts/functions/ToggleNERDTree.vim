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
