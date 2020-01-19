set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set list
set number
syntax on
set ambiwidth=double
set mouse=a
set ttymouse=xterm2
set clipboard+=unnamed

filetype off

if &compatible
    set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  " " プラグインを記述する
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#add('vim-ruby/vim-ruby')
  call dein#add('vim-scripts/AutoComplPop')
  call dein#add('vim-scripts/yanktmp.vim')
  call dein#add('vim-scripts/rails.vim')
  call dein#add('vim-scripts/The-NERD-tree')
  call dein#add('vim-scripts/endwise.vim')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('tomasr/molokai')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('Lokaltog/vim-powerline')
  call dein#add('fuenor/qfixgrep')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('fatih/vim-go')
  call dein#add('chr4/nginx.vim') " nginxシンタックスハイライト
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

colorscheme molokai
" vimにcoffeeファイルタイプを認識させる

" au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
" " インデント設定
" autocmd FileType coffee    setlocal sw=2 sts=2 ts=2 et
" " オートコンパイル
"   "保存と同時にコンパイルする
" autocmd BufWritePost *.coffee silent make! 
"   "エラーがあったら別ウィンドウで表示
" autocmd QuickFixCmdPost * nested cwindow | redraw! 
" " Ctrl-cで右ウィンドウにコンパイル結果を一時表示する
" nnoremap <silent> <C-C> :CoffeeCompile vert <CR><C-w>h

" Vundleの処理後、ftpluginとindentを読み込む
" filetype plugin indent on


map <silent> <F12> :call MagicComment()<CR>

map <silent> sy :call YanktmpYank()<CR> 
map <silent> sp :call YanktmpPaste_p()<CR> 
map <silent> sP :call YanktmpPaste_P()<CR> 

" vim立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup=1

nnoremap <silent><C-e> :NERDTreeToggle<CR>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
