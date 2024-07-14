" {{{ Mappings
let mapleader=' ' 

" {{{ Basic mappings
nnoremap <silent><leader>e :Ex<CR>
nnoremap <leader>q :q<CR> 
nnoremap <leader>Q :q!<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>E :e<space>
nnoremap <silent><leader>n :enew<CR> 
" }}}

" {{{ Window resize mappings
nnoremap <silent> <leader><Up> :resize +5<CR>
nnoremap <silent> <leader><Down> :resize -5<CR>
nnoremap <silent> <leader><Right> :vertical resize +5<CR>
nnoremap <silent> <leader><Left> :vertical resize -5<CR>
" }}}

" {{{ Configuration file mappings
nnoremap <silent> <leader>T :e ~/.config/tmux/tmux.conf<CR>
nnoremap <silent> <leader>K :e ~/.config/kitty/kitty.conf<CR>
nnoremap <silent> <leader>vv :e $MYVIMRC<CR>
nnoremap <silent> <leader>vs :so $MYVIMRC<CR>
" }}}

" {{{ FZF mappings
nnoremap <silent> <leader>fw :Rg<CR>
nnoremap <silent> <leader>fg :GitFiles<CR>
nnoremap <silent> <leader>ff :Files<CR>
nnoremap <leader>ft :set filetype=
" }}}

" {{{ Buffer navigation mappings
nnoremap <silent>[b :bp<CR>
nnoremap <silent>]b :bn<CR>
nnoremap <silent> <leader>B :Buffers<CR>
nnoremap <silent> <leader>c :call HandleBufferClose()<CR>
nnoremap <silent> <leader>bg :call GoToBuffer()<CR>
nnoremap <silent> <leader>bd :call DeleteBuffer()<CR>
nnoremap <silent> <leader>b- :b#<CR>
nnoremap <silent> <leader>bo :BufOnly<CR>
nnoremap <leader>bO :BufOnly<space>
nnoremap <silent><leader>l :call ToggleBuffers()<CR>
" }}}


" {{{ Split window mappings
nnoremap <silent> \| :vsplit<CR>
nnoremap <silent> \ :split<CR>
" }}}

" {{{ Plugin management mappings
nnoremap <silent> <leader>pc :PlugClean<CR>
nnoremap <silent> <leader>pu :PlugUpdate<CR>
nnoremap <silent> <leader>pi :PlugInstall<CR>
" }}}

" {{{ Tmux navigator mappings
nnoremap <silent> <c-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <c-j> :TmuxNavigateDown<CR>
nnoremap <silent> <c-k> :TmuxNavigateUp<CR>
nnoremap <silent> <c-l> :TmuxNavigateRight<CR>
tnoremap <silent> <c-h> <c-w>h
tnoremap <silent> <c-j> <c-w>j
tnoremap <silent> <c-k> <c-w>k
tnoremap <silent> <c-l> <c-w>l
" }}}

" {{{ Floaterm mappings
nnoremap <silent> <F6> :FloatermToggle<CR>
nnoremap <silent> <F7> :FloatermNew<CR>
nnoremap <silent> <F8> :FloatermPrev<CR>
nnoremap <silent> <F9> :FloatermNext<CR>
tnoremap <silent> <F6> <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <F7> <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermPrev<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermNext<CR>
" }}}

" {{{ Session mappings
nnoremap <leader>sr :SLoad<space>
nnoremap <leader>sc :SClose<CR>
nnoremap <leader>ss :SSave<CR>
nnoremap <leader>sd :SDelete<CR>
" }}}

" {{{ Commentary mappings
nnoremap <silent> <leader>/ :Commentary<CR>
vnoremap <silent> <leader>/ :Commentary<CR> 
" }}}


" {{{ Disable arrow keys
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
" }}}

" {{{ Git fugitive mappings
nnoremap <leader>gs :G status<CR>   " Open Git status window
nnoremap <leader>gd :G diff<CR>     " View working directory diff
nnoremap <leader>gp :G pull<CR>     " Pull changes from remote
nnoremap <leader>gc :G commit<CR>   " Open commit message editor
nnoremap <leader>ga :G add<CR>      " Stage current file for commit
nnoremap <leader>gb :G branch<CR>   " List branches
nnoremap <leader>gf :G log<CR>      " View commit history
nnoremap <leader>gh :help fugitive<CR>   " Reference fugitive help within vim
" }}}

" {{{ Miscellaneous mappings
" Toggle fold
nnoremap <silent> <leader><leader> za
nnoremap <silent> <leader>uw :set wrap!<CR>            " Toggle Wrap
nnoremap <silent> <leader>un :set number!<CR>          " Toggle number
nnoremap <silent> <leader>ur :set relativenumber!<CR>  " Toggle relative numbering
nnoremap <silent> <leader>H :execute 'Startify'<CR>    " Show [H]ome screen
" File info
nnoremap <silent><leader>i :f<CR>                      " Prints file info
" Quick escape
inoremap <silent>jj <esc>
" }}}

" }}}
