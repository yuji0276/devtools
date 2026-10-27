#==========================================================
# .zshrc — 対話シェル向けの設定
#   PATH / 環境変数 / パッケージマネージャの初期化は .zprofile へ。
#==========================================================

#========
# 補完
#========
FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
mkdir -p "$XDG_CACHE_HOME/zsh"
autoload -Uz compinit && compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select

# 履歴
HISTSIZE=10000
SAVEHIST=10000
mkdir -p "$XDG_STATE_HOME/zsh"
HISTFILE="$XDG_STATE_HOME/zsh/history"
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE

# alias for develop
source "$ZDOTDIR/aliases.zsh"


# plugins
source "$ZDOTDIR/plugins.zsh"

