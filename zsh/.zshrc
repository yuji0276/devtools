#==========================================================
# .zshrc — 対話シェル向けの設定
#   PATH / 環境変数 / パッケージマネージャの初期化は .zprofile へ。
#==========================================================

#========
# 補完
#========
FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select

# 履歴
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE

# alias for develop
source ~/.config/devtools/zsh/aliases.zsh


# plugins
source ~/.config/devtools/zsh/plugins.zsh
