let mapleader=" "

" File Manager
nnoremap <silent> <leader>e :Lexplore<cr>

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
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
tnoremap <silent> <c-h> <c-w>h
tnoremap <silent> <c-j> <c-w>j
tnoremap <silent> <c-k> <c-w>k
tnoremap <silent> <c-l> <c-w>l


nnoremap <C-Up> :resize +5<CR>
nnoremap <C-Down> :resize -5<CR>
nnoremap <C-Right> :vertical resize +5<CR>
nnoremap <C-Left> :vertical resize -5<CR>

" Quick open terminal
nnoremap <silent> <leader>t :below terminal<cr>

" Quick edit kitty configuration
nnoremap <silent> <leader>K :e ~/.config/kitty/kitty.conf<cr>

" Quick edit vimconfiguration
nnoremap <silent> <leader>V :e $MYVIMRC<cr>

" Buffers
nnoremap <silent> [b :bp<cr>
nnoremap <silent> ]b :bn<cr>
" nnoremap 


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
nnoremap <silent> <leader>/ :Commentary<cr>
nnoremap <silent> <leader>i :f<cr>

nnoremap <silent> <leader>pc :PlugClean<cr>
nnoremap <silent> <leader>pu :PlugUpdate<cr>
nnoremap <silent> <leader>pi :PlugInstall<cr>

nnoremap <leader>I :call InsertFileInfo()<CR>

nnoremap <leader>sr :SessionOpen<space>
nnoremap <leader>sc :SessionClose<cr>
nnoremap <leader>ss :SessionSave<cr>

nnoremap <silent> <leader>so :source ~/.vimrc<cr>
inoremap <silent> jj <esc>

vnoremap <leader>y "+y
vnoremap <silent> <leader>/ :Commentary<cr> 


nnoremap <silent> <Leader>C :call NextColor(1)<CR>
nnoremap <silent> \| :vsplit<cr>
nnoremap <silent> \\ :split<cr>
