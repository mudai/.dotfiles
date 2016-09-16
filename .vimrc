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
Bundle 'kchmck/vim-coffee-script'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tomasr/molokai'
Bundle 'bronson/vim-trailing-whitespace'

colorscheme molokai

" vimにcoffeeファイルタイプを認識させる

au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
" インデント設定
autocmd FileType coffee    setlocal sw=2 sts=2 ts=2 et
" オートコンパイル
  "保存と同時にコンパイルする
autocmd BufWritePost *.coffee silent make! 
  "エラーがあったら別ウィンドウで表示
autocmd QuickFixCmdPost * nested cwindow | redraw! 
" Ctrl-cで右ウィンドウにコンパイル結果を一時表示する
nnoremap <silent> <C-C> :CoffeeCompile vert <CR><C-w>h

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

" vim立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup=1

nnoremap <silent><C-e> :NERDTreeToggle<CR>
