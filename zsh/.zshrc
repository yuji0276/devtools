FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
mkdir -p "$CACHE_HOME/zsh"
autoload -Uz compinit && compinit -d "$CACHE_HOME/zsh/zcompdump"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select

HISTSIZE=10000
SAVEHIST=10000
mkdir -p "$STATE_HOME/zsh"
HISTFILE="$STATE_HOME/zsh/history"
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE

# alias for develop
source "$ZDOTDIR/aliases.zsh"


# plugins
source "$ZDOTDIR/plugins.zsh"

