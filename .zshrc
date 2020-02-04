export LC_ALL=en_US.UTF-8

setopt nonomatch

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
export PATH=${PYENV_ROOT}/bin:$PATH

# go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# goenv
export GOENV_DISABLE_GOPATH=1
export PATH="$HOME/.goenv/bin:$PATH"

# gcloud
source '/usr/local/bin/google-cloud-sdk/path.zsh.inc'
source '/usr/local/bin/google-cloud-sdk/completion.zsh.inc'

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# direnv
export EDITOR=vim
eval "$(direnv hook zsh)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_all_dups
setopt hist_ignore_dups 
setopt share_history
setopt append_history
setopt hist_no_store
setopt hist_reduce_blanks


#zsh
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'

source ~/.zsh/prompt.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/fzf.zsh
source ~/.zsh/start-tmux.zsh
source ~/.zsh/lazy.zsh

function precmd() {
  if [ ! -z $TMUX ]; then
    tmux refresh-client -S
  fi
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ $HOME/.zshrc -nt ~/.zshrc.zwc ]; then
  zcompile ~/.zshrc
fi
