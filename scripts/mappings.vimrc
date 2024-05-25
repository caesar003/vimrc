
" =============================================================================
" Mappings
" =============================================================================


let mapleader=' ' 
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> ^ g^
nnoremap <silent> 0 g0

" Visual mode mappings
xnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
xnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
xnoremap <silent> ^ g^
xnoremap <silent> 0 g0

" Select mode mappings
snoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
snoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
snoremap <silent> ^ g^
snoremap <silent> 0 g0

" Disable arrow keys
nnoremap <up> <NOP>
nnoremap <down> <NOP>
nnoremap <right> <NOP>
nnoremap <left> <NOP>

" Resize split window
nnoremap <C-S-J> :resize +5<CR>
nnoremap <C-S-K> :resize -5<CR>
nnoremap <C-S-L> :vertical resize +5<CR>
nnoremap <C-S-H> :vertical resize -5<CR>

nnoremap <silent>[b :bp<cr>
nnoremap <silent>]b :bn<cr>

" Quick Escape
inoremap jj <esc>

" Quick Split
nnoremap <silent> \| :vsplit<cr>
nnoremap <silent> \ :split<cr>

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

tnoremap <silent> <c-h> <c-w>h
tnoremap <silent> <c-j> <c-w>j
tnoremap <silent> <c-k> <c-w>k
tnoremap <silent> <c-l> <c-w>l

" Float Term Management
nnoremap <silent> <F6> :FloatermToggle<CR>
nnoremap <silent> <F7> :FloatermNew<CR>
nnoremap <silent> <F8> :FloatermPrev<CR>
nnoremap <silent> <F9> :FloatermNext<CR>

tnoremap <silent> <F6> <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <F7> <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermPrev<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermNext<CR>


nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
