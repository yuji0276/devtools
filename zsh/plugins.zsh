
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
# fzf
eval "$(fzf --zsh)"
# zoxide
eval "$(zoxide init zsh)"
# mise
eval "$(mise activate zsh)"

# syntax-highlighting（必ず末尾付近に）
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Starship（必ず一番最後に）
eval "$(starship init zsh)"
