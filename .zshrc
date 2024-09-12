eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

SAVEHIST=100
HISTFILE=~/.zsh_history

alias ls="exa --icons"
alias lsl="ls -la"
alias bat"bat --style=auto"
alias cls="clear"
alias v="nvim"
alias tm="tmux"
