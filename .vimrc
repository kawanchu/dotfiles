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
NeoBundle "ctrlpvim/ctrlp.vim"

call neobundle#end()
filetype plugin indent on

""""""""""""""""""""
" Unite Setting
""""""""""""""""""""
let g:unite_enable_start_insert=1
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif
"noremap <C-P> :Unite buffer<CR>
"noremap <C-N> :Unite -buffer-name=file file<CR>
"noremap <C-Z> :Unite file_mru<CR>
"noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
                                                                                                                                                                                                                                                                                                                              

""""""""""""""""""""
" Ctrlp Setting
""""""""""""""""""""
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l'
endif

""""""""""""""""""""
" Basic Setting
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
