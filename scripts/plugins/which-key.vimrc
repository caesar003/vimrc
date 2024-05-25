" =============================================================================
" which-key.vim Configuration
" =============================================================================
let g:which_key_map = {
      \'name': 'leader',
      \' ': ['za', 'Fold'],
      \'e': [':call ToggleNERDTree()', 'Toggle file'],
      \'q': ['q', 'Quit'],
      \'Q': ['q!', 'Quit discarding changes.'],
      \'w': ['w', 'Save'],
      \'n': ['enew', 'New empty file'],
      \'T': [':e ~/.config/tmux/tmux.conf', 'Edit tmux config'],
      \'K': [':e ~/.config/kitty/kitty.conf', 'Edit kitty config'],
      \'c': [':call HandleBufferClose()', 'Close buffer'],
      \'/': ['Commentary', 'Comment'],
      \'h': ['Startify', 'Startify'],
      \}

let g:which_key_map_visual = {
      \'name': 'comment',
      \'/': ['Commentary', 'Comment'],
      \}

let g:which_key_map.u = {
      \'name' : 'UI',
      \'w': [':set wrap!', 'Toggle wrap'],
      \'n': [':set number!', 'Toggle line number'],
      \'r': [':set relativenumber!', 'Toggle relative line number'],
      \}

let g:which_key_map.b = {
      \'name': 'Buffers',
      \'l': ['buffers', 'List'],
      \'h': ['sb', 'Split horizontally'],
      \'v': ['vsp', 'Split vertically'],
      \'a': [':%bd\\|e#\\|bd#<cr>', 'Close all buffers'],
      \'o': ['BufOnly', 'Close all other buffers'],
      \}

let g:which_key_map.b.b = {
      \'name': 'Go to buffer',
      \'1': ['<Plug>AirlineSelectTab1', 'Buffer 1'],
      \'2': ['<Plug>AirlineSelectTab2', 'Buffer 2'],
      \'3': ['<Plug>AirlineSelectTab3', 'Buffer 3'],
      \'4': ['<Plug>AirlineSelectTab4', 'Buffer 4'],
      \'5': ['<Plug>AirlineSelectTab5', 'Buffer 5'],
      \'6': ['<Plug>AirlineSelectTab6', 'Buffer 6'],
      \'7': ['<Plug>AirlineSelectTab7', 'Buffer 7'],
      \'8': ['<Plug>AirlineSelectTab8', 'Buffer 8'],
      \'9': ['<Plug>AirlineSelectTab9', 'Buffer 9'],
      \'0': ['<Plug>AirlineSelectTab0', 'Buffer 0'],
      \}

let g:which_key_map.s = {
      \'name': 'Session',
      \'r': [':SLoad<space>', 'Load session'],
      \'c': [':SClose<cr>', 'Close session'],
      \'s': [':SSave<cr>', 'Save session'],
      \'d': [':SDelete<cr>', 'Delete session'],
      \}

let g:which_key_map.f = {
      \'name': 'File',
      \'w': [':Rg<cr>', 'Find word'],
      \'g': [':GitFiles<cr>', 'Find git files'],
      \'f': [':Files', 'Find files'],
      \'b': [':Buffers<cr>', 'Find in buffers'],
      \'i': ['f', 'File information'],
      \'F': ['FormatJS', 'Format JS'],
      \}

let g:which_key_map.p = {
      \'name': 'Plugin',
      \'pc': [':PlugClean<cr>', 'Clean'],
      \'pu': [':PlugUpdate<cr>', 'Update'],
      \'pi': [':PlugInstall<cr>', 'Install'],
      \}

call which_key#register('<Space>', "g:which_key_map", "n")
call which_key#register('<Space>', "g:which_key_map_visual", "v")
