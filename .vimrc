set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'https://github.com/wincent/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'https://github.com/sheerun/vim-polyglot.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

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
