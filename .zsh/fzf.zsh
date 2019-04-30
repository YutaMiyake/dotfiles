export FZF_DEFAULT_OPTS='--height 40% --reverse --border'
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'

function tree-fzf() {
  local SELECTED_FILE=$(tree --charset=o -f | fzf --query "$LBUFFER" | tr -d '\||`|-' | xargs echo)

  if [ "$SELECTED_FILE" != "" ]; then
    BUFFER="$EDITOR $SELECTED_FILE"
    zle accept-line
  fi

  zle reset-prompt
}

zle -N tree-fzf
bindkey "^t" tree-fzf

function git-branch-fzf() {
  local selected_branch=$(git for-each-ref --format='%(refname)' --sort=-committerdate refs/heads | perl -pne 's{^refs/heads/}{}' | fzf --query "$LBUFFER")

  if [ -n "$selected_branch" ]; then
    BUFFER="git checkout ${selected_branch}"
    zle accept-line
  fi

  zle reset-prompt
}

zle -N git-branch-fzf
bindkey "^b" git-branch-fzf

function ssh-fzf () {
  local selected_host=$(grep "Host " ~/.ssh/config | grep -v '*' | cut -b 6- | fzf --query "$LBUFFER")

  if [ -n "$selected_host" ]; then
    BUFFER="ssh ${selected_host}"
    zle accept-line
  fi
  zle reset-prompt
}

zle -N ssh-fzf
bindkey '^\' ssh-fzf

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_all_dups

function history-fzf() {
  local tac

  if which tac > /dev/null; then
    tac="tac"
  else
    tac="tail -r"
  fi

  BUFFER=$(history -n 1 | eval $tac | fzf --query "$LBUFFER")
  CURSOR=$#BUFFER

  zle reset-prompt
}

zle -N history-fzf
bindkey '^r' history-fzf

function ghq-fzf() {
  local selected_dir=$(ghq list | fzf --query="$LBUFFER")

  if [ -n "$selected_dir" ]; then
    BUFFER="cd $(ghq root)/${selected_dir}"
    zle accept-line
  fi

  zle reset-prompt
}

zle -N ghq-fzf
bindkey "^g" ghq-fzf
