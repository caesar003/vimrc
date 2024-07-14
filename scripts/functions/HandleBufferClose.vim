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
