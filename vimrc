" Plugins
source ~/.vimrc.plugins

" Terminal Settings
set t_Co=256
set term=xterm-256color
set t_ut=

" Leader
let mapleader = ","

" Colorscheme
colorscheme jellybeans

" Keybinds
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <Leader>t :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>T :CtrlPClearCache<CR>:CtrlP<CR>
inoremap jj <ESC>
nnoremap <Leader>n :NERDTreeToggle<CR>
imap <C-d> <ESC>diwi
nnoremap <Leader>w :w<CR>
nnoremap <Leader>E :e ~/.vimrc<CR>
nnoremap <Leader>S :so ~/.vimrc<CR>

" Custom Commands
command! Eplg :e ~/.vimrc.plugins

" CtrlP Settings
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|output|bower_components|dist)|(\.(swp|hg|git|svn))$'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" General Settings
set ts=2
set sts=2
set expandtab
set shiftround
set shiftwidth=2
set number
set noerrorbells
set novisualbell
set noswapfile
set showmatch
set ignorecase
set clipboard+=unnamed
set nolist
set title
set virtualedit=onemore
set laststatus=2
set list

set mouse=a
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

" Auto Commands
au BufWritePre * StripWhitespace
au BufNew * EnableWhitespace

