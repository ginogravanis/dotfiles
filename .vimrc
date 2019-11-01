" Use vim settings, rather than vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" Vundle requires this. It'll be turned back on after the Vundle setup.
filetype off

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'andys8/vim-elm-syntax'
call vundle#end()

" Enable filetype detection as well as filetype-specific indentation rules and
" plugins
filetype on
filetype indent on
filetype plugin on

" Enable mouse support
set mouse=a

" Turn on syntax highlighting
syntax on

" Use X11 clipboard by default
set clipboard=unnamedplus

" Don't create backup/swap files
set nobackup
set nowritebackup
set noswapfile

" Auto-reload file if it has changed outside of Vim
set autoread

" Save file with <Esc><Esc>
map <Esc><Esc> :w<CR>

" Disable Ex Mode
map Q <Nop>

" A tab is displayed as 3 spaces
set tabstop=3

" <Tab> inserts 3 spaces
set softtabstop=3

" Always replace tabs with spaces
set expandtab

" On line break, stay on the same indentation level
set autoindent

" Number of spaces to use for auto-indentation
set shiftwidth=3

" Use multiples of shiftwidth when indenting with < and >
set shiftround

" Show line numbers
set number

" Ignore case if search pattern is all lowercase
set ignorecase
set smartcase

" Don't highlight search results
set nohlsearch

" Keep 7 lines off the edges of the screen when scrolling
set scrolloff=7

" Search/replace 'globally' by default
set gdefault

" Use Unix line endings
set fileformat=unix

" Restrict line length to 72 characters for git commit messages
au FileType gitcommit set tw=72

" Automatically load changes to .vimrc
autocmd BufWritePost .vimrc source ~/.vimrc

" Disable automatic line breaks
set formatoptions-=t

" Set the textwidth to 79 characters
set textwidth=79

" If a file is already opened, switch to that buffer
set switchbuf=useopen

" Remember more actions
set undolevels=1000

" Maintain a viminfo file with at most 80 lines of registers
set viminfo='20,\"80

" Make tab completion for files/buffers act like the shell
set wildmenu

" Change the terminal's title
set title

" Don't blink or beep
set novisualbell
set noerrorbells

" Show visual selection info and partial commands
set showcmd

" Disable line mode (security measure)
set modelines=0
set nomodeline

" Highlight conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Set colors
colorscheme solarized
let &background="dark"
let &colorcolumn="80,".join(range(120,999), ",")
hi ColorColumn ctermbg=0 guibg=Black

" Swap between light and dark mode with <F5>
nnoremap <F5> :let &background = ( &background == "dark" ? "light" : "dark")<CR>

" Toggle nerdtree with <TAB>
map <TAB> :NERDTreeToggle<CR>
