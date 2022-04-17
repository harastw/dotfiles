call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'

call plug#end()

" Sets how many lines of history VIM has to remember
set history=500

syntax enable
set number

set expandtab " Use spaces instead of tabs
set smarttab " Be smart when using tabs ;)

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set hlsearch
set incsearch

map <F2> :NERDTreeToggle<CR>

colorscheme gruvbox
set background=dark
