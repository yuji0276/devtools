#==========================================================
# devtools/zsh/aliases.zsh — 開発ツール系エイリアス
#   .zshrc から source される。
#==========================================================

#========
# yabai / skhd (ウィンドウマネージャ)
#   設定: ~/.config/yabai/yabairc, ~/.config/skhd/skhdrc
#========
alias yb='yabai'
alias ybs='yabai --start-service'          # 起動
alias ybx='yabai --stop-service'           # 停止
alias ybr='yabai --restart-service'        # 再起動（設定再読み込み）
alias ybl='tail -f /tmp/yabai_${USER}.err.log'   # ログ確認

alias sk='skhd'
alias sks='skhd --start-service'
alias skx='skhd --stop-service'
alias skr='skhd --restart-service'
alias skl='tail -f /tmp/skhd_${USER}.err.log'
alias sko='skhd --observe'                 # 押したキーの名前を確認

# yabai + skhd をまとめて再起動
wmr() { yabai --restart-service; skhd --restart-service; }
