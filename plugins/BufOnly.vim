vim9script
# BufOnly.vim  -  Delete all the buffers except the current/named buffer.
#
# Copyright 2003 - 2022 by Christian J. Robinson <heptite@gmail.com>
#
# Distributed under the terms of the Vim license.  See ":help license".
#
# Usage:
#
# :Bonly / :BOnly / :Bufonly / :BufOnly [buffer] 
#
# Without any arguments the current buffer is kept.  With an argument the
# buffer name/number supplied is kept.

command! -nargs=? -complete=buffer -bang Bonly {
  g:BufOnly('<args>', '<bang>')
}
command! -nargs=? -complete=buffer -bang BOnly {
  g:BufOnly('<args>', '<bang>')
}
command! -nargs=? -complete=buffer -bang Bufonly {
  g:BufOnly('<args>', '<bang>')
}
command! -nargs=? -complete=buffer -bang BufOnly {
  g:BufOnly('<args>', '<bang>')
}

def g:BufOnly(b: string, bang: string): void
  var buffer: number

  if b == ''
    # No buffer provided, use the current buffer.
    buffer = bufnr('%')
  elseif str2nr(b) > 0
    # A buffer number was provided.
    buffer = bufnr(str2nr(b))
  else
    # A buffer name was provided.
    buffer = bufnr(b)
  endif

  if buffer == -1
    echohl ErrorMsg
    echomsg 'No matching buffer for ' .. b
    echohl None
    return
  endif

  var last_buffer: number = bufnr('$')

  var delete_count = 0

  for n in range(1, last_buffer)
    if n != buffer && buflisted(n)
      if bang == '' && getbufvar(n, '&modified')
        echohl ErrorMsg
        echomsg 'No write since last change for buffer ' ..
          n .. ' (add ! to override)'
        echohl None
      else
        silent exe 'bdel' .. bang .. ' ' .. n
        if ! buflisted(n)
          ++delete_count
        endif
      endif
    endif
  endfor

  if delete_count == 1
    echomsg delete_count .. " buffer deleted"
  elseif delete_count > 1
    echomsg delete_count .. " buffers deleted"
  endif

enddef
