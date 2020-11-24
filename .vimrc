" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
call vundle#end()
filetype plugin indent on

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Default indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix


" PEP8
autocmd BufNewFile,BufRead *.py
            \ set tabstop=4 |
            \ set softtabstop=4 |
            \ set shiftwidth=4 |
            \ set textwidth=79 |
            \ set expandtab |
            \ set autoindent |
            \ set fileformat=unix

" Front-end dev
autocmd BufNewFile,BufRead *.js,*.jsx,*.html,*.css,*.scss
			\ set tabstop=2 |
			\ set softtabstop=2 |
			\ set shiftwidth=2 |
            \ set textwidth=100

" UTF8 support
set encoding=utf8

" Auto-complete (@XXX: todo)

" Syntax checking/highlighting
let python_highlight_all=1
syntax on

" Colorscheme
set background=dark
colors solarized

" Switch background
nnoremap <F5> :let &background = ( &background == "dark" ? "light" : "dark" )<CR>

" Nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$']
nnoremap <Tab> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Replace ack with the silver searcher in ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column'
" let g:ackprg = 'ag --vimgrep'
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

" Bind <Backslash> to grep
"command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
"nnoremap \ :Ag<SPACE>

" Quickfix window navigation
nnoremap <Right> :cn<CR>
nnoremap <Left> :cp<CR>
nnoremap <Down> :ccl<CR>
nnoremap <Up> :copen<CR>

" General settings
set history=500
set number
set clipboard=unnamed
set autoread

set so=7

let $LANG='en'
set langmenu=en

set ruler
set cmdheight=2
"set hidden
set ignorecase
set smartcase
set nohlsearch
set incsearch
set lazyredraw
set magic
set noerrorbells
set novisualbell

set nobackup
set nowb
set noswapfile

set linebreak
set textwidth=500

set wrap

map <Esc><Esc> :up<CR>
