if &compatible
  set nocompatible
endif

let s:dein_dir = expand('$HOME/.cache/dein')
let s:dein_path = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml_path = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
execute 'set runtimepath+=' . s:dein_path

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_path)
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

set autoindent
set cursorline
set cursorcolumn
set expandtab
set nobackup
set noswapfile
set number
set ruler
set shiftwidth=2
set smartindent
set tabstop=2
