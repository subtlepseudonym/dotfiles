set number
set ruler
set showcmd
set autoread
set ignorecase
set smartcase
set hlsearch
set lazyredraw
set showmatch

set autoindent
set smartindent
set encoding=utf-8
set shiftwidth=2
set tabstop=2
set smarttab

set ttimeoutlen=100

syntax enable
filetype plugin on
filetype indent on

command W w !sudo tee % > /dev/null
