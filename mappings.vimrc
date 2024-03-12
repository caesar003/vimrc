let mapleader=" "

" File Manager
" nnoremap <silent> <leader>e :Lexplore<cr>
nnoremap <silent> <leader>e :call ToggleNERDTree()<cr>

" Quick write and exit
nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>Q :q!<cr>
nnoremap <leader>E :e<space>

" Quick open empty buffer
nnoremap <leader>n :enew<cr>

" Navigation remap
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> ^ g^
nnoremap <silent> 0 g0

nnoremap <up> <NOP>
nnoremap <down> <Nop>
nnoremap <right> <Nop>
nnoremap <left> <Nop>

nnoremap <C-Up> :resize +5<CR>
nnoremap <C-Down> :resize -5<CR>
nnoremap <C-Right> :vertical resize +5<CR>
nnoremap <C-Left> :vertical resize -5<CR>

" Quick open terminal
nnoremap <silent> <leader>t :below terminal<cr>

" Quick edit kitty configuration
nnoremap <silent> <leader>K :e ~/.config/kitty/kitty.conf<cr>

" Quick edit and source vim configuration
nnoremap <silent> <leader>vv :e $MYVIMRC<cr>
nnoremap <silent> <leader>vs :so $MYVIMRC<cr>

" Buffers
nnoremap <silent> [b :bp<cr>
nnoremap <silent> ]b :bn<cr>
nnoremap <leader>fw :Rg<cr>
nnoremap <leader>fg :GitFiles<cr>
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fb :Buf<cr>
nnoremap <leader>fr :Rg<cr>
nnoremap <leader>bl :buffers<cr>
nnoremap <leader>bh :sb<cr>
nnoremap <leader>bv :vsp<cr>
nnoremap <leader>ba :%bd\|e#\|bd#<cr>
nnoremap <leader>c :bdelete<cr>

" Copy to system clipboard
nnoremap <leader>yy "+yy
vnoremap <leader>y "+y
nnoremap <silent> <leader>i :f<cr>

nnoremap <leader>I :call InsertFileInfo()<CR>

inoremap <silent> jj <esc>

nnoremap <silent> <Leader>C :call NextColor(1)<CR>
nnoremap <silent> \| :vsplit<cr>
nnoremap <silent> \\ :split<cr>



" Plugin manager
nnoremap <silent> <leader>pc :PlugClean<cr>
nnoremap <silent> <leader>pu :PlugUpdate<cr>
nnoremap <silent> <leader>pi :PlugInstall<cr>

" Vim-tmux navigator and moving split windows
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
tnoremap <silent> <c-h> <c-w>h
tnoremap <silent> <c-j> <c-w>j
tnoremap <silent> <c-k> <c-w>k
tnoremap <silent> <c-l> <c-w>l

autocmd FileType netrw nnoremap <silent> <buffer> <c-h> :TmuxNavigateLeft<CR>
autocmd FileType netrw nnoremap <silent> <buffer> <c-l> :TmuxNavigateRight<CR>


" Floating terminal
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

" Session manager
nnoremap <leader>sr :SessionOpen<space>
nnoremap <leader>sc :SessionClose<cr>
nnoremap <leader>ss :SessionSave<cr>

" Commentary
nnoremap <silent> <leader>/ :Commentary<cr>
vnoremap <silent> <leader>/ :Commentary<cr> 
