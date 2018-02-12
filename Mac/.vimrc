"///////////////////////////Vundle.vim plugins/////////////////////////
set nocompatible
syntax enable
filetype on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"plugin manager
Plugin 'gmarik/Vundle.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'

"file navigation
Plugin 'wincent/Command-T'
Plugin 'kien/ctrlp.vim'

"Code navigation
Plugin 'taglist.vim'
Plugin 'majutsushi/tagbar'

"user interface
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'

"autocomplete
Plugin 'Valloric/YouCompleteMe'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

"syntax
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'junegunn/vim-easy-align'

"help
Plugin 'vimwiki'

"utility
Plugin 'tomtom/tlib_vim'

"Documentation
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdcommenter'

"Plugin 'Raimondi/delimitMate'
"Plugin 'vim-scripts/matchit.zip'
"Plugin 'nginx.vim'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'c9s/colorselector.vim'
"Plugin 'skammer/vim-css-color'
"Plugin 'tpope/vim-fugitive'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'pangloss/vim-javascript'
"Plugin 'briancollins/vim-jst'
"Plugin 'seattlerb/minitest'
"Plugin 'vim-scripts/tlib'
"Plugin 'tangledhelix/vim-octopress'
"Plugin 'tpope/vim-ragtag'
"Plugin 'tpope/vim-rails'
"Plugin 'tpope/vim-repeat'
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'tpope/vim-haml'
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'slim-template/vim-slim'
"Plugin 'heartsentwined/vim-emblem'
"Plugin 'nono/vim-handlebars'
"Plugin 'mattn/emmet-vim'
"Plugin 'groenewege/vim-less'
"Plugin 'AndrewRadev/vim-eco'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'fatih/vim-go'
"Plugin 'vim-perl/vim-perl'
"Plugin 'ajh17/Spacegray.vim'
"Plugin 'mxw/vim-jsx'
"Plugin 'moll/vim-node'

call vundle#end()

"//////////pathogen.vim/////////////////////////////////////////
execute pathogen#infect()
syntax on
filetype plugin indent on

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
set listchars=tab:▸\ ,trail:▫
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

"font
if has("gui_running")
    " Basics
    "colorscheme molokai
    set guifont=Monaco:h12" My favorite font
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

""///////////////////key mapping/////////////////////////////////
:imap <C-j> <ESC>

"/////////////syntastic settins//////////////////////////////////
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"////////////NERDTree and NERDTreeTabs settings//////////////////
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDSpaceDelims=1
let g:nerdtree_tabs_open_on_new_tab=1
let g:NERDTreeWinSize = 30

"////////////////kien/ctrlp.vim settings/////////////////////////////
"Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
let g:ctrlp_show_hidden = 1
let g:ctrlp_match_window = 'order:ttb,max:20'
if executable('ag')
" Use Ag over Grep
 set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'c'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*\\Debug\\*,*\\Release\\*,*\\Bin\\*
set wildignore+=*.swp,*.zip,*.exe,*.rc,*.vcxproj,*.obj,*.ilk,*.pdb,*.lastbuildstate
set wildignore+=*.unsuccessfulbuild,*.log,*.tlog,*.res,*.tlb,*.idb,*.pch "Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }


"/////////////////Airline settings/////////////////////////////////////
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:multi_cursor_exit_from_insert_mode = 0

"////////////////////NeoComplete settings///////////////////////////////
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


"//////////////////////////////////NeoSnippet settings////////////////////

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<TAB>" : "\<Plug>(neosnippet_expand_or_jump)"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif







"map <DOWN> <NOP>
"map <LEFT> <NOP>
"map <RIGHT> <NOP>
"inoremap <UP> <NOP>
"inoremap <DOWN> <NOP>
"inoremap <LEFT> <NOP>
"inoremap <RIGHT> <NOP>

" cancel searched highlight
"noremap <CR> :nohlsearch<CR>

"au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
"au BufNewFile,BufReadPost *.go setl shiftwidth=4 expandtab

"vnoremap <silent> <Enter> :EasyAlign<cr>

"autocmd! bufwritepost .vimrc source %
"autocmd BufWritePre * :%s/\s\+$//e

" keyboard shortcuts
"let mapleader = ','
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l
"nmap <leader>t :CtrlP<CR>
"nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
"nnoremap <leader>b :CtrlPBuffer<CR>
"nnoremap <leader>g :GitGutterToggle<CR>
"nmap <leader>a :Ag<space>
"nmap <leader>d :NERDTreeToggle<CR>
"nmap <silent> gw    "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<cr><c-o><c-l>

" Vim-Go
"au FileType go nmap <leader>r <Plug>(go-run)
"let g:go_fmt_command = "goimports"
"let g:gitgutter_enabled = 0

" automatically rebalance windows on vim resize
"autocmd VimResized * :wincmd =
"let g:syntastic_ruby_checkers=['rubocop']
"let g:syntastic_go_checkers = ['go', 'gofmt', 'golint', 'govet']
"let g:syntastic_javascript_checkers = ['eslint']
"let g:multi_cursor_exit_from_visual_mode = 0
"let g:jsx_ext_required = 0
"set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc,dist/**
"set autoread
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
"vnoremap p "_dP
"cnoremap w!! %!sudo tee > /dev/null %

