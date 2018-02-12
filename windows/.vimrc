cd ~/
set nocompatible              " be iMproved, required 
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=%homepath%/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'shougo/neobundle.vim'
"file navigation
Plugin 'kien/ctrlp.vim'

"Code navigation
Plugin 'majutsushi/tagbar'
"Plugin 'taglist.vim'

"user interface
Plugin 'scrooloose/nerdtree'  "{
  nnoremap <silent> <F4> :NERDTreeToggle<CR>
  nnoremap <silent> <F5> :NERDTreeFind<CR>
"}


Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'

"autocomplete
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'garbas/vim-snipmate'
"Plugin 'Shougo/neocomplete'
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'

"syntax
"Plugin 'jeaye/color_coded'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'junegunn/vim-easy-align'
Plugin 'klen/python-mode'
"help
Plugin 'vimwiki'

"utility
"Plugin 'tomtom/tlib_vim'
"Plugin 'tpope/vim-surround'

"Documentation
"Plugin 'scrooloose/nerdcommenter'
call vundle#end()            " required
filetype plugin indent on    " required

""//////////////////general settings//////////////////////
set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:?\ ,trail:?
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set synmaxcol=500
set tabstop=8                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:?\ ,trail:?
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set synmaxcol=500
set tabstop=8                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set nowrap

"auto change directory to current file
set autochdir
autocmd BufEnter * silent! lcd %:p:h
nnoremap ,cd :cd %:p:h<CR>:pwd<CR> "map ',cd' to change to current directory

"font
if has("gui_running")
    " Basics
    colorscheme molokai
    set guifont=Consolas:h10
    set guioptions=ce
    "              ||
    "              |+-- use simple dialogs rather than pop-ups
    "              +-- use GUI tabs, not console style tabs
    "set mousehide " hide the mouse cursor when typing
endif

"encoding
let &termencoding=&encoding
set fileencodings=utf-8,gbk
syntax enable
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set nowrap
"font
if has("gui_running")
    " Basics
    colorscheme molokai
    set guifont=Consolas:h12
    set guioptions=ce
    "              ||
    "              |+-- use simple dialogs rather than pop-ups
    "              +-- use GUI tabs, not console style tabs
    "set mousehide " hide the mouse cursor when typing
endif

"encoding
let &termencoding=&encoding
set fileencodings=utf-8,gbk
syntax enable

