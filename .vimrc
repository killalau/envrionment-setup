" Plugin List
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/wincent/command-t.git', {'do': 'rake make'}
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'https://github.com/sheerun/vim-polyglot.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git', {'do': './install.py --clang-completer --tern-completer'}
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

call plug#end()

" Basic setup
syntax on
filetype plugin indent on

set ignorecase  " Set ignore case

set laststatus=2 " Alwasy show status bar
set ruler        " Show cursor positon
set number       " Show line number
set cursorline   " Highlight current cursor row
set cursorcolumn " Highlight current cursor column
set hlsearch     " Highlight search result

colorscheme molokai        " Molokai color scheme
let g:molokai_original = 1 " Molokai setting
let g:rehash256 = 1        " Molokai setting

set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14
let g:Powerline_symbols = 'fancy'          " Powerline
let g:Powerline_colorscheme='solarized256' " Powerline
