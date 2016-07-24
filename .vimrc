" Ignore VI compactiable
set nocompatible

" Plugin List
call plug#begin('~/.vim/plugged')

" File navigation, \ + t
Plug 'https://github.com/wincent/command-t.git', {'do': 'cd ruby/command-t && /System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/bin/ruby extconf.rb && make'}

" Selector to Html, Ctrl + E
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

" Powerline
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" Syntax highlight
Plug 'https://github.com/sheerun/vim-polyglot.git'

" Oumi complete
Plug 'https://github.com/Valloric/YouCompleteMe.git', {'do': './install.py --clang-completer --tern-completer'}

" js template string highligh
Plug 'https://github.com/Quramy/vim-js-pretty-template.git'

" Unite
Plug 'Shougo/unite.vim'

" typings plugin
Plug 'mhartington/vim-typings'

" js indent
Plug 'jason0x43/vim-js-indent'

call plug#end()

" Basic setup
syntax on
filetype plugin indent on

set ignorecase   " Set ignore case
set tabstop=4    " Tab = 4 space
set shiftwidth=4 " Tab width
set expandtab    " Tab to space
set backspace=indent,eol,start

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

autocmd FileType javascript JsPreTmpl html
autocmd FileType typescript JsPreTmpl html

set wildignore+=*/node_modules/*,*/bower_components/*
