" ====================
" === Editor Setup ===
" ====================
" ===
" === System
" ===
set autochdir

" ===
" === Editor behavior
" ===
set secure
set relativenumber
set hidden
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set tf
set lazyredraw
set visualbell

" ===
" === Terminal Behaviors
" ===
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>

" ===
" === Basic Mappings
" ===
let mapleader=" "
noremap ; :
" Save & Quit
noremap Q :wq<CR>
noremap W :w<CR>
" Open init.vim
noremap <LEADER>rc :e $HOME/.config/nvim/init.vim<CR>
" Indentation
nnoremap < <<
nnoremap > >>
" Search
noremap <LEADER><CR> :nohlsearch<CR>
" Folding
noremap <silent> <LEADER>a za

" Cursor Movement
noremap <silent> <LEADER>j 10j
noremap <silent> <LEADER>k 10k
noremap <silent> <LEADER>h 10h
noremap <silent> <LEADER>l 10l

" ===
" === Window Management
" ===
noremap <LEADER>w <C-w>w
noremap <LEADER>h <C-w>h
noremap <LEADER>j <C-w>j
noremap <LEADER>k <C-w>k
noremap <LEADER>l <C-w>l
" split the screens
noremap sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sj :split<CR>
noremap sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :vsplit<CR>
" resize splits with arrow keys
noremap <LEADER><up> :res +5<CR>
noremap <LEADER><down> :res -5<CR>
noremap <LEADER><left> :vertical resize-5<CR>
noremap <LEADER><right> :vertical resize+5<CR>
" place the two screens up and down
noremap sn <C-w>t<C-w>K
" place the two screens side by side
noremap sv <C-w>t<C-w>H

" ===
" === Tab Management
" ===
noremap tk :tabe<CR>
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>

" ===
" === Other useful stuff
" ===
" Opening a terminal window
nore <LEADER>/ :set vsplit<CR>:res -10<CR>:term<CR>
" Find and replace
noremap \s :%s//g<left><left>
