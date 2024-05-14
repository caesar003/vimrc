let mapleader=' ' 
nnoremap <silent> <leader>e :call ToggleNERDTree()<cr>

" Quick exit 
nnoremap <leader>q :q<cr> 
" Exit discarding changes
nnoremap <leader>Q :q!<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>E :e<space>
nnoremap <leader>n :enew<cr> 

nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> ^ g^
nnoremap <silent> 0 g0

" Disable arrow keys
nnoremap <up> <NOP>
nnoremap <down> <NOP>
nnoremap <right> <NOP>
nnoremap <left> <NOP>

nnoremap <C-Up> :resize +5<CR>
nnoremap <C-Down> :resize -5<CR>
nnoremap <C-Right> :vertical resize +5<CR>
nnoremap <C-Left> :vertical resize -5<CR>

nnoremap <silent> <leader>t :below terminal<cr>
nnoremap <silent> <leader>T :e ~/.config/tmux/tmux.conf<cr>
nnoremap <silent> <leader>K :e ~/.config/kitty/kitty.conf<cr>
nnoremap <silent> <leader>vv :e $MYVIMRC<cr>
nnoremap <silent> <leader>vs :so $MYVIMRC<cr>

nnoremap <silent>[b :bp<cr>
nnoremap <silent>]b :bn<cr>

nnoremap <leader>fw :Rg<cr>
nnoremap <leader>fg :GitFiles<cr>
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fr :Rg<cr>

nnoremap <leader>bl :buffers<cr>
nnoremap <leader>bh :sb<cr>
nnoremap <leader>bv :vsp<cr>
nnoremap <leader>ba :%bd\|e#\|bd#<cr>
nnoremap <silent> <leader>c :bdelete<cr>

" Close all other buffers
nnoremap <leader>bo :BufOnly<cr>
" Close all but the specified
nnoremap <leader>bO :BufOnly<space>

nnoremap <leader>yy "+yy
vnoremap <leader>y "+y

nnoremap <silent> <leader>i :f<cr>

" Quick Escape
inoremap <silent> jj <esc>

" Quick Split
nnoremap <silent> \| :vsplit<cr>
nnoremap <silent> \\ :split<cr>

nnoremap <silent> <leader>pc :PlugClean<cr>
nnoremap <silent> <leader>pu :PlugUpdate<cr>
nnoremap <silent> <leader>pi :PlugInstall<cr>

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
tnoremap <silent> <c-h> <c-w>h
tnoremap <silent> <c-j> <c-w>j
tnoremap <silent> <c-k> <c-w>k
tnoremap <silent> <c-l> <c-w>l

" Float Term Management

nnoremap <silent> <F7> :FloatermNew<CR>
nnoremap <silent> <F8> :FloatermPrev<CR>
nnoremap <silent> <F9> :FloatermNext<CR>
nnoremap <silent> <F6> :FloatermToggle<CR>

tnoremap <silent> <F7> <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermPrev<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermNext<CR>
tnoremap <silent> <F6> <C-\><C-n>:FloatermToggle<CR>

nnoremap <leader>sr :SessionOpen<space>
nnoremap <leader>sc :SessionClose<cr>
nnoremap <leader>ss :SessionSave<cr>

" Comment
nnoremap <silent> <leader>/ :Commentary<cr>
vnoremap <silent> <leader>/ :Commentary<cr> 

" Quick fold
nnoremap <leader><leader> za

