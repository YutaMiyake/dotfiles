pyenv() {
  unfunction "$0"
  source <(pyenv init -)
  source <(pyenv virtualenv-init -)
  $0 "$@"
}

goenv() {
  unfunction "$0"
  source <(goenv init -)
  $0 "$@"
}

rbenv() {
  unfunction "$0"
  source <(rbenv init -)
  $0 "$@"
}

kubectl() {
  unfunction "$0"
  source <(kubectl completion zsh)
  $0 "$@"
}

