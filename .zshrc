export LC_ALL=en_US.UTF-8

setopt nonomatch

export EDITOR=nvim

# emacs like keybind
bindkey -e

export PATH=$HOME/bin:/usr/local/bin:$PATH

# GNU commands
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/findutils/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/gnu-tar/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/grep/libexec/gnuman:$MANPATH"

# latex
export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin

# anaconda
export PATH="$HOME/anaconda3/bin:$PATH"

# pyenv
export PYENV_ROOT="${HOME}/.pyenv"
export PATH=$PYENV_ROOT/shims:${PYENV_ROOT}/bin:$PATH

# pipx
export PATH="$PATH:${HOOME}/.local/bin"

# go
# export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# goenv
export GOENV_DISABLE_GOPATH=1
export PATH="$HOME/.goenv/bin:$PATH"

# gcloud
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# direnv
eval "$(direnv hook zsh)"

export PATH=$HOME/.cargo/bin:$PATH

# poetry
export PATH=$HOME/.poetry/bin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# history
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=10000
setopt hist_ignore_all_dups
setopt hist_ignore_dups 
setopt extended_history
setopt hist_expire_dups_first
setopt share_history
setopt append_history
setopt inc_append_history
setopt hist_no_store
setopt hist_reduce_blanks

#zsh
source "$HOME/.zinit/bin/zinit.zsh"

zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# rust
eval "$(zoxide init zsh)" # call after zinit which re-alias zi

source ~/.zsh/prompt.zsh
source ~/.zsh/fzf.zsh
source ~/.zsh/start-tmux.zsh
source ~/.zsh/lazy.zsh
source ~/.zsh/aliases.zsh

function precmd() {
  if [ ! -z $TMUX ]; then
    tmux refresh-client -S
  fi
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ $HOME/.zshrc -nt ~/.zshrc.zwc ]; then
  zcompile ~/.zshrc
fi
