# history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_all_dups

# interactive git goto branch
function peco-git-goto(){
  g goto "$(g branches | peco)"
}
alias gto="peco-git-goto"

# interactive history (ctrl r)
function peco-select-history() {
  BUFFER=$(\history -n -r 1 | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history
