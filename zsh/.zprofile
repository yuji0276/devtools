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
export PATH="$PATH:$DATA_HOME/lmstudio/bin"

# Antigravity
export PATH="/Users/yuji/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity IDE
export PATH="/Users/yuji/.antigravity-ide/antigravity-ide/bin:$PATH"

# Added by Obsidian
export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"
