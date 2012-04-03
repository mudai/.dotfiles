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
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/surround.vim'
Bundle 'bbommarito/vim-slim'

" Vundleの処理後、ftpluginとindentを読み込む
filetype plugin indent on
