set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'digitaltoad/vim-pug'
NeoBundle 'fatih/vim-go'
NeoBundle 'pmsorhaindo/syntastic-local-eslint.vim'
NeoBundle 'posva/vim-vue'
NeoBundle 'rking/ag.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/AnsiEsc.vim'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'Yggdroot/indentLine'

call neobundle#end()
filetype plugin indent on

" js
let g:jsx_ext_required = 0

" Unite
let g:unite_enable_start_insert=1
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

" Ctrlp
if executable('ag')
  let g:ctrlp_use_caching = 0
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup -g ""'
endif

" NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Syntastic
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args="--max-line-length=99"
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_enable_signs = 1
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
if executable('rubocop')
  let g:syntastic_ruby_checkers = ['rubocop']
endif

" Color
colorscheme default

" Basic
syntax on
set autoindent
set backspace=indent,eol,start
set clipboard=unnamedplus
set cursorline
set encoding=utf-8
set expandtab
set fileencodings=utf-8
set fileformats=unix,dos,mac
set number
set shiftwidth=2
set smartindent
set softtabstop=2
set ruler
set tabstop=2
autocmd! FileType perl setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd! FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd! FileType go setlocal shiftwidth=4 tabstop=4 softtabstop=4
au BufRead,BufNewFile *.rabl setf ruby
