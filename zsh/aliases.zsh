#==========================================================
# devtools/zsh/aliases.zsh — aliases for deveop
#   Sourced from .zshrc
#==========================================================


#========
# zellij (Terminal Workspace)
#   config: ~/.config/zellij
#========
alias zl='zellij'
alias zls='zellij list-sessions'        # list
alias zla='zellij attach'               # Reconnect(Selection screen without arguments)
alias zlc='zellij attach --create'      # If available, connect; otherwise, create a new one.
alias zlk='zellij kill-all-sessions'
alias trr='terraform'

#========
# yabai / skhd (Window Manager)
#   config: ~/.config/yabai/yabairc, ~/.config/skhd/skhdrc
#========
alias yb='yabai'
alias ybs='yabai --start-service'
alias ybx='yabai --stop-service'
alias ybr='yabai --restart-service'
alias ybl='tail -f /tmp/yabai_${USER}.err.log'

alias sk='skhd'
alias sks='skhd --start-service'
alias skx='skhd --stop-service'
alias skr='skhd --restart-service'
alias skl='tail -f /tmp/skhd_${USER}.err.log'
alias sko='skhd --observe'

# yabai + skhd をまとめて再起動
wmr() { yabai --restart-service; skhd --restart-service; }

#========
# git /lazygit
#   config: ~/.gitconfig
#========
alias g='git'
alias ga='git add '
alias gc='git commit'
alias gp='git push origin'
alias gd='git diff'
alias gs='git status'
alias gsh='git show'
alias lg='lazygit'

# ripgrep
alias grep='rg'

# eza
alias ls='eza --icons --group-directories-first'
alias tree='eza -T --icons --git-ignore'

# bat
alias cat='bat'
