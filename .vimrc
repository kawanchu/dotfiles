set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'rking/ag.vim'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tomtom/tcomment_vim.git'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'vim-scripts/AnsiEsc.vim'
NeoBundle 'Yggdroot/indentLine'
"NeoBundle 'Flake8-vim'
"NeoBundle 'davidhalter/jedi-vim'
"NeoBundle 'hynek/vim-python-pep8-indent'
"NeoBundle 'Townk/vim-autoclose'
NeoBundle 'scrooloose/syntastic'

call neobundle#end()
filetype plugin indent on

""""""""""""""""""""
" Unite
""""""""""""""""""""
let g:unite_enable_start_insert=1
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

""""""""""""""""""""
" Ctrlp
""""""""""""""""""""
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l'
endif

""""""""""""""""""""
" Indent Line
""""""""""""""""""""
let g:indentLine_faster = 1

""""""""""""""""""""
" Syntastic
""""""""""""""""""""
"let g:syntastic_python_checkers = ['pyflakes', 'pep8']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args="--max-line-length=120"

""""""""""""""""""""
" Basic
""""""""""""""""""""
syntax on
set number
set ruler
set cursorline
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
autocmd! FileType perl setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd! FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
set autoindent
set smartindent
set clipboard=unnamed
