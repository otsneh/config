" improve vim (not vi compatible)
set nocompatible

" force plugins to be compatible
filetype off

" load plugins here via Vundle
" set runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" put rest of plugins here
" Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'

" all plugins must be added above the following line
call vundle#end()
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" for plugins to load correctly
filetype plugin indent on

" turn on syntax highlighting
syntax enable

" set dark background
set background=dark

" set colorscheme
colorscheme wombat256mod

" disable cterm bg (so transparency works)
hi Normal guibg=NONE ctermbg=NONE
hi NonText ctermbg=none

" turn off modeline for security
:set modelines=0

" blink cursor on error instead of beeping
" set visualbell
set noerrorbells

" encoding
set encoding=utf-8

" set tab to 4 spaces
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" tab inserts 4 spaces
set expandtab

" use 4 spaces when indenting with '>'
set shiftwidth=4

" set backspace to work in insert mode
set backspace=indent,eol,start

" show line numbers
set number

" show relative line numbers
set relativenumber

" show file stats
set ruler

" show last command in bottom bar
set showcmd

" highlight current line
set cursorline

" visual autocomplete for command menu
set wildmenu

" redraw only when needed
set lazyredraw

" highlight matching parenthesis
set showmatch

" search characters as they are entered
set incsearch

" highlight search matches
set hlsearch

" enable powerline fonts for vim-airline
let g:airline_powerline_fonts = 1

" enable ctags so tagbar works
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" set leader to be comma
let mapleader=","

" map ", " to turn off search highlight after search is over
nnoremap <leader><space> :nohlsearch<CR>

" map ",n" to NERDTree
noremap <Leader>n :NERDTreeToggle<CR>

" map ", m" to Tagbar
noremap <Leader>m :TagbarToggle<CR>

" jk is <ESC>
inoremap jk <ESC>

" better split screen movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" remove these when I get better at vim
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>
