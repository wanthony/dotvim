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
nnoremap ggs :Scratch<CR>
nmap [h <Plug>GitGutterPrevHunk
nmap ]h <Plug>GitGutterNextHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterRevertHunk

" Custom Commands
command! Eplg :e ~/.vimrc.plugins
command! JsonCleanup :%!python -m json.tool

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
set relativenumber
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

" Vimux Commands
nnoremap <Leader>nt :VimuxRunCommand "clear; npm test"<CR>
nnoremap <Leader>vc :VimuxRunCommand "clear; cucumber"<CR>
nnoremap <Leader>vr :VimuxRunCommand "clear; rspec"<CR>
nnoremap <Leader>vd :VimuxCloseRunner<CR>
nnoremap <Leader>vp :VimuxPromptCommand<CR>
nnoremap <Leader>vg :VimuxRunCommand "clear; gulp"<CR>
nnoremap <Leader>vpc :VimuxPromptCommand<CR>cucumber
nnoremap <Leader>vpr :VimuxPromptCommand<CR>rspec
nnoremap <Leader>vpg :VimuxPromptCommand<CR>gulp

" GitGuter Keymaps
nnoremap <Leader>ggp :GitGutterPrevHunk<CR>
nnoremap <Leader>ggn :GitGutterNextHunk<CR>
nnoremap <Leader>ggr :GitGutterPreviewHunk<CR>
nnoremap <Leader>ggv :GitGutterRevertHunk<CR>
nnoremap <Leader>ggs :GitGutterStageHunk<CR>

" Livedown Preview
nnoremap <Leader>ldp :call LivedownPreview()<CR>

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" GitGutter Config
let g:gitgutter_diff_args = "-w"

" YouCompleteMe / UltiSnip / SuperTab
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', '~/.vim/plugged/vim-snippets/UltiSnips', '~/.vim/UltiSnips/angular/']
