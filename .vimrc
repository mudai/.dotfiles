set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set list
set number
syntax on
set ambiwidth=double

set nocompatible
filetype off
set rtp+=~/.vim/vundle.git/
call vundle#rc()

" プラグインを記述する
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'yanktmp.vim'
Bundle 'rails.vim'
Bundle 'The-NERD-tree'
" Bundle 'dbext.vim'
Bundle 'endwise.vim'

" Vundleの処理後、ftpluginとindentを読み込む
filetype plugin indent on

" magic comment
function! MagicComment()
  let magic_comment = "# -*- coding: utf-8 -*-\n"
  let pos = getpos(".")
  call cursor(1, 0)
  execute ":normal i" . magic_comment
  call setpos(".", pos)
endfunction

map <silent> <F12> :call MagicComment()<CR>

map <silent> sy :call YanktmpYank()<CR> 
map <silent> sp :call YanktmpPaste_p()<CR> 
map <silent> sP :call YanktmpPaste_P()<CR> 
