set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set list
set number
syntax on

set nocompatible
filetype off
set rtp+=~/.vim/vundle.git/
call vundle#rc()

" プラグインを記述する
Bundle 'vim-ruby/vim-ruby'
Bundle 'bbommarito/vim-slim'
Bundle 'vim-scripts/AutoComplPop'

" Vundleの処理後、ftpluginとindentを読み込む
filetype plugin indent on

