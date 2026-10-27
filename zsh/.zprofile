#==========================================================
# .zprofile — ログインシェルで一度だけ評価する「前提」設定
#   PATH / 環境変数 / パッケージマネージャの初期化のみを置く。
#   補完・プラグイン・プロンプトなど対話シェルの設定は .zshrc へ。
#==========================================================

# Homebrew — 以降の brew 依存より必ず先に評価すること
eval "$(/opt/homebrew/bin/brew shellenv)"

# ~/.local/bin (uv などが利用)
. "$HOME/.local/bin/env"

# pnpm
export PNPM_HOME="/Users/yuji/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Go
export PATH="$PATH:$HOME/.local/share/go/bin"

# LM Studio
export PATH="$PATH:/Users/yuji/.lmstudio/bin"

# Antigravity
export PATH="/Users/yuji/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity IDE
export PATH="/Users/yuji/.antigravity-ide/antigravity-ide/bin:$PATH"

# Added by Obsidian
export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"
