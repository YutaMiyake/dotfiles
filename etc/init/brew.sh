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
brew install --with-default-names ed
brew install --with-default-names gnu-indent
brew install --with-default-names gnu-which
brew install --with-readline gpg

# zsh
brew install zsh
brew install zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
brew install zsh-completions
echo '/usr/local/bin/zsh' >> /etc/shells
chsh -s /usr/local/bin/zsh

# go
brew install goenv
#github.com/mattn/qq
#golang.org/x/tools/cmd/goimports
#golang.org/x/lint/golint 

# node
brew install nodebrew
nodebrew install-binary stable
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
brew install bash
brew install vim --with-override-system-vi
brew install ghq
brew install fzf
$(brew --prefix)/opt/fzf/install
brew install scala
brew install sbt
brew install mysql
brew install postgresql
brew install pyenv
brew install pyenv-virtualenv
brew install graphviz
brew install direnv
brew install rbenv
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
brew install ffmpeg
brew install imagemagick

brew install tmux
brew install reattach-to-user-namespace
ghq get https://github.com/powerline/fonts.git

# sigil
curl -L "https://github.com/gliderlabs/sigil/releases/download/v0.4.0/sigil_0.4.0_$(uname -sm|tr \  _).tgz" \
    | tar -zxC /usr/local/bin
