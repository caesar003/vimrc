" =============================================================================
" Functions
" =============================================================================

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

function AirlineInit()
  let g:airline_section_c = airline#section#create(['%t'])
endfunction

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
      echo 'Buffer close canceled.'
    endif
  else
    " No unsaved changes, just delete the buffer
    bdelete
  endif
endfunction

command! FormatJSON %!python3 -m json.tool
command! FormatJS %!prettier --stdin-filepath % 2>/dev/null

source $HOME/.vim/init/scripts/functions/BufOnly.vim
