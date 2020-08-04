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
Plugin 'fatih/vim-go'

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

" round to multiple of 4 when indenting with '>'
set shiftround

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

" set local leader to \
let maplocalleader="\\"

" map ", " to turn off search highlight after search is over
nnoremap <leader><space> :nohlsearch<CR>

" map ",n" to NERDTree
noremap <Leader>n :NERDTreeToggle<CR>

" map ",m" to Tagbar
noremap <Leader>m :TagbarToggle<CR>

" jk is <ESC>
inoremap jk <ESC>
inoremap <esc> <nop>

" better split screen movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" j and k move to next row instead of file line
nnoremap j gj
nnoremap k gk

" move line down one
noremap <leader>- ddp

" move line up one
noremap <leader>_ ddkP

" uppercase current word in insert/normal mode
inoremap <leader><c-u> <esc>viwU<esc>ie
nnoremap <leader><c-u> viwU<esc>e

" edit my vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" source my vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>

" add some abbreviations
iabbrev adn and
iabbrev teh the
iabbrev waht what

iabbrev @@ ophirsneh@gmail.com
iabbrev ccopy Copyright 2019 Ophir Sneh, all rights reserved 
iabbrev ssig -- <cr>Ophir Sneh<cr>ophirsneh@gmail.com

" wrap text in quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>` viw<esc>a`<esc>bi`<esc>lel

vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>
vnoremap <leader>` <esc>`>a`<esc>`<i`<esc>

" stronger h
nnoremap H ^

" stronger l
nnoremap L $

" language specific autocmd
augroup on_read
    autocmd!
    autocmd BufNewFile,BufRead *.html :setlocal nowrap
augroup END

augroup filetype_sage
    au! BufRead,BufNewFile *.sage,*.spyx,*.pyx setfiletype python
augroup END

augroup filetype_js_c
    autocmd!
    " comments
    autocmd FileType javascript,c,cpp :nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType javascript,c,cpp :iabbrev <buffer> iff if ()<left>
augroup END

augroup filetype_python
    autocmd!
    autocmd FileType python :nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType python :iabbrev <buffer> iff if:<left>
augroup END

augroup filetype_html
    autocmd!
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

" parameters
onoremap p i(

" body
onoremap b \return<cr>

" inside next parenthesis/brackets
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap in{ :<c-u>normal! f{vi{<cr>

" inside last parenthesis/brackets
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>

" around next parenthesis/brackets
onoremap an( :<c-u>normal! f(<cr>
onoremap an{ :<c-u>normal! f{<cr>

" around last parenthesis/brackets
onoremap al( :<c-u>normal! vF)l<cr>
onoremap al{ :<c-u>normal! vF}l<cr>
