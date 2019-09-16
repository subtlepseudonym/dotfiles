" Text Rendering
syntax on " code syntax hihlighting
set wrap " enable line wrapping
set linebreak " avoid line wrapping in the middle of a word
set encoding=utf-8
set fileencoding=utf-8

" User Interface
set number " show line numbers
set ruler " always show cursor position
set laststatus=2 " always show status bar
set showmatch " show matching paren / brace / bracket / quote
set mat=2 " how many tenths of a second to blink match for `showmatch`
set noerrorbells " disable beep on error
set novisualbell " disable screen flashing on errors
set t_vb= " blank command for visual bell
set title " set window title to reflect file be edited

" Search
set ignorecase " case insensitive search
set hlsearch " hightlight search items
set incsearch " match partial hits with incremental search

" Performance
set lazyredraw
set tm=500 " number of milliseconds waited for a mapped key sequence to complete

" Indentation
set shiftwidth=4 " when shifting, indent using four spaces
set tabstop=4 " indent using four spaces
set smarttab " insert 'tabstop' number of spaces when the 'tab' key is pressed
set ai " auto-indentation
set si " smart indentation

" Filetype Settings
filetype plugin on " load plugin file based upon file type
filetype indent on " load indent file based upon file type

" For when I forget to sudo vim a write-protected file
command W w !sudo tee % > /dev/null

" Store runtime files in ~/.vim_runtime
try
    set viminfo+=n~/.vim_runtime/.viminfo
    set backupdir=~/.vim_runtime/tmp/backupdir//
    set directory=~/.vim_runtime/tmp/swpdir//
    set undodir=~/.vim_runtime/tmp/undodir//
    set undofile
catch
endtry
