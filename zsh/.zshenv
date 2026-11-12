# Base Directory
export CONFIG_HOME="$HOME/.config"
export DATA_HOME="$HOME/.local/share"
export STATE_HOME="$HOME/.local/state"
export CACHE_HOME="$HOME/.cache"

# 以降の .zprofile / .zshrc は $ZDOTDIR から読む
export ZDOTDIR="$CONFIG_HOME/zsh"

# 各ツールの履歴を $STATE_HOME へ
export LESSHISTFILE="$STATE_HOME/less/history"
export PYTHON_HISTORY="$STATE_HOME/python/history"
export PSQL_HISTORY="$STATE_HOME/psql/history"
export MYSQL_HISTFILE="$STATE_HOME/mysql/history"
export REDISCLI_HISTFILE="$STATE_HOME/redis/history"

export npm_config_cache="$CACHE_HOME/npm"
export YARN_GLOBAL_FOLDER="$CACHE_HOME/yarn"
export MPLCONFIGDIR="$CACHE_HOME/matplotlib"
export ANSIBLE_HOME="$DATA_HOME/ansible"
export CHECKPOINT_DISABLE=1   # terraform の ~/.terraform.d/checkpoint_* を作らせない
