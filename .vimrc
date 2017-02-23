if 1
  set nocompatible
  filetype plugin indent off

  if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle'))
  endif

  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle 'Shougo/unite.vim'
  " NeoBundle 'Shougo/neomru.vim'
  " NeoBundle 'Shougo/neocomplete.vim'
  " NeoBundle 'marcus/rsense'
  " NeoBundle 'supermomonga/neocomplete-rsense.vim'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'altercation/vim-colors-solarized'
  NeoBundle 'rking/ag.vim'
  NeoBundle 'ctrlpvim/ctrlp.vim'
  NeoBundle 'tomtom/tcomment_vim.git'
  NeoBundle 'bronson/vim-trailing-whitespace'
  NeoBundle 'vim-scripts/AnsiEsc.vim'
  NeoBundle 'Yggdroot/indentLine'
  NeoBundle 'scrooloose/syntastic'
  NeoBundle 'tell-k/vim-autopep8'
  NeoBundle 'tpope/vim-haml'
  " NeoBundle 'szw/vim-tags'
  NeoBundle 'tpope/vim-endwise'
  NeoBundle 'tpope/vim-rails'
  " NeoBundle 'ngmy/vim-rubocop'
  NeoBundle 'slim-template/vim-slim'
  NeoBundle 'derekwyatt/vim-scala'
  NeoBundle 'kchmck/vim-coffee-script'
  NeoBundle 'fatih/vim-go'
  NeoBundle 'pangloss/vim-javascript'
  NeoBundle 'mxw/vim-jsx'
  NeoBundle 'othree/yajs.vim'
  NeoBundle 'pmsorhaindo/syntastic-local-eslint.vim'

  call neobundle#end()
  filetype plugin indent on
endif


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
  let g:ctrlp_user_command = 'ag %s -l'
endif

" NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" Syntastic
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args="--max-line-length=99"
let g:syntastic_ruby_checkers=['rubocop', 'mri']
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_enable_signs = 1
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Rsense
" if isdirectory('/usr/local/lib/rsense-0.3')
"   let g:rsenseHome = '/usr/local/lib/rsense-0.3'
"   let g:rsenseUseOmniFunc = 1
" endif

" neocomplete
" let g:acp_enableAtStartup = 0
" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1
" if !exists('g:neocomplete#force_omni_input_patterns')
"   let g:neocomplete#force_omni_input_patterns = {}
" endif
" let g:neocomplete#force_omni_input_patterns.ruby = '[^.*\t]\.\w*\|\h\w*::'

" Basic
imap <C-j> <esc>
noremap! <C-j> <esc>
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
autocmd! FileType go setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd BufNewFile,BufRead *.{html,htm,vue*} set filetype=html
set autoindent
set smartindent
set clipboard=unnamedplus
set mouse=a
set backspace=indent,eol,start
set encoding=utf-8
" set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac
