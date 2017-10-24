# Install apps with homebrew with brew-cast
# brew-cast homepage: http://caskroom.io/
# search cask: http://caskroom.io/search

# install brew-cask
brew install caskroom/cask/brew-cask

# Apps
apps=(
  dropbox
  evernote
  google-chrome
  firefox
  utorrent
  appcleaner
  iterm2
  sublime-text3
  eclipse-java
  macdown
  microsoft-office
  mactex
  flux
  tower
  screenflick
  github
  vlc
  mplayerx
  lyrics-master
  max
  skype
  filezilla
  transmit
  1password
  xquartz
  wireshark
  sophos-anti-virus-home-edition
  cripmenu
  graphviz
  virtual-box
  vagrant
  texpad
  sequel-pro
  postico
  visual-studio-code
)

# Manual download list
# UML editor (e.g., violet UML editor)
# Ubuntu, guest addition, extension package for USB
# MiniUsage
# iTunes
# Detune

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# fonts
fonts=(
  font-crimson-text
  font-source-sans-pro
  font-clear-sans
  google-japanese-ime # Hiragana & Alphabet http://www.google.co.jp/ime/index.html
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

# Remove outdated versions from the cellar.
brew cleanup