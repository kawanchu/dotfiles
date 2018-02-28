if &compatible
  set nocompatible
endif

let s:dein_dir = expand('$HOME/.cache/dein')
let s:dein_path = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
execute 'set runtimepath+=' . s:dein_path

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#add(s:dein_path)
  call dein#add('airblade/vim-gitgutter')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('digitaltoad/vim-pug')
  call dein#add('posva/vim-vue')
  call dein#add('rking/ag.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/syntastic')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-endwise')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('vim-scripts/AnsiEsc.vim')
  call dein#add('wavded/vim-stylus')
  call dein#add('w0rp/ale')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('Yggdroot/indentLine')
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" ale
let g:ale_emit_conflict_warnings = 0
let g:ale_lint_on_text_changed = 0
" let g:ale_sign_column_always = 1

" ctrlp
if executable('ag')
  let g:ctrlp_use_caching = 0
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup -g ""'
endif

" indentLine
let g:indentLine_faster = 1

" nerdtree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1

" vim-airline
let g:airline_theme='solarized'

" vim-vue
autocmd FileType vue syntax sync fromstart

" vim-colors-solarized
colorscheme solarized

set autoindent
set background=dark
set cursorline
set expandtab
set number
set ruler
set shiftwidth=2
set smartindent
set tabstop=2
