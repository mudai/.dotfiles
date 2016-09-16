# Created by newuser for 4.3.11
# vim ライクなキーバインド
bindkey -v

setopt prompt_subst
setopt extended_glob
setopt auto_cd
setopt auto_pushd
setopt list_packed
setopt correct

# ヒストリーの設定
HISTFILE=$HOME/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000
setopt extended_history
setopt share_history
setopt hist_ignore_dups

#SVNのeditor設定
EDITOR=vi

# プロンプトの設定
autoload -Uz colors
colors
# oh-my-zshから拝借したモジュールのロード
for config_file ($HOME/.zsh/lib/*.zsh) source $config_file
# 個人で作成したカスタムテーマの反映
source $HOME/.zsh/themes/muta_custom.zsh-theme

# コマンド履歴検索の設定
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# 補完候補を ←↓↑→ でも選択出来るようにする
zstyle ':completion:*:default' menu select=1
# tab等での補完時にパーミッションやファイル、フォルダで色を変える
zstyle ':completion:*' list-colors ''

# Command complete
autoload -U compinit
compinit

# alias
# ./text.txtを実行した場合はvim経由で開く
alias -s txt=vim
alias ls='ls -G'
alias la='ls -la'
alias svndiff="svn diff | colordiff | less -r"
alias pdf=evince 
alias jrb="java -classpath ./tmp/bsh-2.0b4.jar bsh.Interpreter"

# screen自動生成
#screen_max_count=8
#screen_num=`ps aux | grep zsh | grep -v grep | wc -l`
#if test $screen_max_count -gt $screen_num ; then
#  screen
#fi


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source $HOME/.rvm/scripts
