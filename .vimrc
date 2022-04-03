" plugins
call plug#begin('~/.vim/autoload')
" theme
Plug 'morhetz/gruvbox'
Plug 'ap/vim-buftabline'
Plug 'preservim/nerdtree' " , { 'on': 'NerdTreeToogle' }
" text navigation
Plug 'justinmk/vim-sneak'
" text editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" programming
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" language specific
" Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
call plug#end()

" theme
set nowrap
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

colorscheme gruvbox
set background=dark

""" mappings
let mapleader = "\<Space>"
let maplocalleader = ","

" save file with ctrl+s (convinient with ctrl+a in tmux)
" fix bash_profile for ssh sessions, https://stackoverflow.com/a/11298171
nmap <c-s> :w<cr>
imap <c-s> <esc>:w<cr>

" navigation
" https://sidneyliebrand.io/blog/a-collection-of-vim-key-binds
noremap K {
noremap J }
noremap H ^
noremap L $

"" text editing
" join two lines, https://stackoverflow.com/a/9506063
nnoremap <silent> <Leader>j :let p=getpos('.')<bar>join<bar>call setpos('.', p)<cr>
" pairing braces
" inoremap <> <><Left>
" inoremap () ()<Left>
" inoremap {} {}<Left>
" inoremap [] []<Left>
" inoremap "" ""<Left>
" inoremap '' ''<Left>
" inoremap `` ``<Left>
" yank till end of line (consistent with C and D)
nnoremap Y y$
" for indenting pasted code correctly, https://unix.stackexchange.com/a/199207
" set pastetoggle=<F2>

" escape
imap jj <Esc>
imap kk <Esc>
 
" buffers 
nmap <Leader>] :bnext<CR>
nmap <Leader>[ :bprev<CR>
nmap <Leader>b :bnext<CR>
nmap <Leader>B :bprev<CR>
nmap <Leader>d :bd<CR>
" nmap <silent> <TAB> :bnext<CR>
" nmap <silent> <S-TAB> :bprevious<CR>

" edit and source vimrc
nnoremap <Leader>ve :edit $MYVIMRC<CR>
nnoremap <Leader>vs :source $MYVIMRC<CR>
nnoremap <Leader>vr :source $MYVIMRC<CR>
 
" splits
set noequalalways " keep scales of spits when closing one
set splitright " split vertical windows right to the current
set splitbelow " split horizontal windows below to the current
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>= :vertical resize +5<CR> 
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" nerdtree
nmap <Leader>f :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1

" sneak
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1 " case insensitive
let g:sneak#s_next = 1

" coc
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<Tab>" :
  \ coc#refresh()

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" use <c-space>for trigger completion
inoremap <silent><expr> <NUL> coc#refresh()

" r, vim-r-plugin
let r_indent_align_args = 0
let r_indent_ess_comments = 0
let r_indent_ess_compatible = 0
let R_assign = 0 " disable autocompletion -/<--
let R_in_buffer = 0
let R_tmux_split = 1

""" basic settings
set hidden " manage multiple buffers effectively
syntax on
set scrolloff=5

set ruler
set number relativenumber " display line numbers
set backspace=indent,eol,start " enable backspace in insert mode

set wildmenu " better tab autocompletion in command mode
set wildmode=list:longest " autocompletion like in shell

set tabstop=2 
set shiftwidth=2 
set expandtab
set autoindent
"set smartindent

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set noerrorbells
set novisualbell

set incsearch " incremental search
set hlsearch " highlight when searching
set ignorecase " case sensitive search
set smartcase " case-sensitive if expression contains a capital letter
set showmatch " show matching braces

set history=1000 " longer history of commands (default 20)
