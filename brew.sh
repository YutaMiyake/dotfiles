# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# mac
brew install mas

# Install GNU commands
brew install binutils
brew install coreutils
brew install diffutils
brew install findutils
brew install gawk
brew install gnu-sed
brew install gnu-tar
brew install gnutls
brew install grep
brew install gzip
brew install screen
brew install wdiff
brew install wget

# bash
brew install bash

# zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
echo '/usr/local/bin/zsh' >> /etc/shells
chsh -s /usr/local/bin/zsh

# pkg manager
# brew install goenv
git clone https://github.com/syndbg/goenv.git ~/.goenv

brew install pyenv
brew install pyenv-virtualenv

brew install pipenv

curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

brew install nodebrew
nodebrew install-binary stable

brew install rbenv

# go
#github.com/simeji/jid/cmd/ji
#github.com/mattn/qq
#golang.org/x/tools/cmd/goimports
#golang.org/x/lint/golint

# node
# npm-check-updates
# requests
# express
# debug
# moment
# mkdirp
# glob
# underscore
# webpack

# dev
brew install ghq
brew install fzf
$(brew --prefix)/opt/fzf/install
brew install mysql
brew install postgresql
brew install graphviz
brew install direnv
brew install watch
brew install peco
brew install tig
brew install tree
brew install pstree
brew install jq
brew install colordiff
brew install rmtrash
brew install nkf
brew install stern
brew install kubectx
brew install kustomize
brew install ffmpeg
brew install imagemagick
brew install terminal-notifier
brew install the_silver_searcher
brew install youtube-dl

brew install tmux
brew install reattach-to-user-namespace
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

brew install neovim
pip3 install -U neovim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
pip3 install -U pynvim
brew install ctags

# scala
brew install scala
brew install sbt

# rust
brew install bat
brew install exa
brew install fd
brew install starship
brew install ripgrep

