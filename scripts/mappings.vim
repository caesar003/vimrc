let mapleader=' ' 
nnoremap <silent> <leader>e :call ToggleNERDTree()<cr>
nnoremap <leader>q :q<cr> 
nnoremap <leader>Q :q!<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>E :e<space>
nnoremap <leader>n :enew<cr> 
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> ^ g^
nnoremap <silent> 0 g0
nnoremap <silent> <leader><Up> :resize +5<CR>
nnoremap <silent> <leader><Down> :resize -5<CR>
nnoremap <silent> <leader><Right> :vertical resize +5<CR>
nnoremap <silent> <leader><Left> :vertical resize -5<CR>
nnoremap <silent> <leader>T :e ~/.config/tmux/tmux.conf<cr>
nnoremap <silent> <leader>K :e ~/.config/kitty/kitty.conf<cr>
nnoremap <silent> <leader>vv :e $MYVIMRC<cr>
nnoremap <silent> <leader>vs :so $MYVIMRC<cr>
nnoremap <silent>[b :bp<cr>
nnoremap <silent>]b :bn<cr>
nnoremap <silent> <leader>fw :Rg<cr>
nnoremap <silent> <leader>fg :GitFiles<cr>
nnoremap <silent> <leader>ff :Files<cr>
nnoremap <leader>bl :Buffers<cr>
nnoremap <silent> <leader>c :call HandleBufferClose()<CR>
nnoremap <silent> <leader>bo :BufOnly<cr>
nnoremap <leader>bO :BufOnly<space>
nnoremap <silent> <leader>i :f<cr>
inoremap <silent> jj <esc>
nnoremap <silent> \| :vsplit<cr>
nnoremap <silent> \ :split<cr>
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
nnoremap <silent> <F6> :FloatermToggle<CR>
nnoremap <silent> <F7> :FloatermNew<CR>
nnoremap <silent> <F8> :FloatermPrev<CR>
nnoremap <silent> <F9> :FloatermNext<CR>
tnoremap <silent> <F6> <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <F7> <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermPrev<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermNext<CR>
nnoremap <leader>sr :SLoad<space>
nnoremap <leader>sc :SClose<cr>
nnoremap <leader>ss :SSave<cr>
nnoremap <leader>sd :SDelete<cr>
nnoremap <silent> <leader>/ :Commentary<cr>
vnoremap <silent> <leader>/ :Commentary<cr> 
nnoremap <silent> <leader><leader> za
nnoremap <silent> <leader>uw :set wrap!<cr>
nnoremap <silent> <leader>un :set number!<cr>
nnoremap <silent> <leader>ur :set relativenumber!<cr>
nnoremap <silent> <leader>H :execute 'Startify'<cr>
nmap <leader>bb1 <Plug>AirlineSelectTab1
nmap <leader>bb2 <Plug>AirlineSelectTab2
nmap <leader>bb3 <Plug>AirlineSelectTab3
nmap <leader>bb4 <Plug>AirlineSelectTab4
nmap <leader>bb5 <Plug>AirlineSelectTab5
nmap <leader>bb6 <Plug>AirlineSelectTab6
nmap <leader>bb7 <Plug>AirlineSelectTab7
nmap <leader>bb8 <Plug>AirlineSelectTab8
nmap <leader>bb9 <Plug>AirlineSelectTab9
nmap <leader>bb0 <Plug>AirlineSelectTab0

