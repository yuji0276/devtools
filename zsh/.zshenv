#==========================================================
# .zshenv — すべての zsh で最初に評価される
#   ~/.zshenv はこのファイルへのシンボリックリンク。
#   XDG Base Directory と ZDOTDIR の定義のみを置く。
#==========================================================

# XDG Base Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# 以降の .zprofile / .zshrc は $ZDOTDIR から読む
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# 各ツールの履歴を $XDG_STATE_HOME へ
export LESSHISTFILE="$XDG_STATE_HOME/less/history"
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
export PSQL_HISTORY="$XDG_STATE_HOME/psql/history"
export MYSQL_HISTFILE="$XDG_STATE_HOME/mysql/history"
export REDISCLI_HISTFILE="$XDG_STATE_HOME/redis/history"
