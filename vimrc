set nocompatible
set showmode
set nowrap
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set vb t_vb=
syntax enable

" Vundle-Plugin Manager
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Conque-Shell'
Bundle 'snipMate'
Bundle 'pboehm/snipmate-snippets'
Bundle 'scrooloose/nerdtree'
Bundle 'Python-mode-klen'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'sophacles/vim-bundle-sparkup'
Bundle 'tComment'
Bundle 'wincent/Command-T'
Bundle 'chimeric/dokuvimki'
Bundle 'briandoll/change-inside-surroundings.vim'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'gregsexton/MatchTag'
Bundle 'Raimondi/delimitMate'

filetype plugin indent on     " required!

" Mappings
let mapleader = ","
map <silent> <leader>y :NERDTreeToggle<CR>
map <silent> <c-c> :q<CR>
map <silent> <c-s> :w<CR>

" move between splittings
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" move between tabs
nmap <silent> <C-Left> :tabp<CR>
nmap <silent> <C-Right> :tabn<CR>

map - <C-W>-
map + <C-W>+
map # <C-W><
map ´ <C-W>>

"T-Comment
map <leader>c <c-_><c-_>

filetype plugin on

" autocmd's
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufRead,BufNewFile *.html.erb setlocal filetype=html.eruby
autocmd BufRead,BufNewFile *.less setlocal filetype=css

" Command that set up vim to break text
command! -nargs=* Wrap set wrap linebreak nolist
command! -nargs=* Sn tabedit ~/.vim/bundle/snipmate-snippets/snippets
