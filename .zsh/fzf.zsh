FD_OPTIONS="--hidden --follow --exclude .git --exclude node_modules"

export FZF_DEFAULT_OPTS="--no-mouse --height 50% -1 --reverse --multi --inline-info --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden:wrap' --bind='f3:execute(bat --style=numbers {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)'"

export FZF_DEFAULT_COMMAND="git ls-files --cached --others --exclude-standard | fd --type f --type l $FD_OPTIONS"

export FZF_CTRL_T_COMMAND="fd $FD_OPTIONS"
export FZF_ALT_C_COMMAND="fd --type d $FD_OPTIONS"

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
