# Install apps with homebrew with brew-cast
# brew-cast homepage: http://caskroom.io/
# search cask: http://caskroom.io/search

# install brew-cask
brew install caskroom/cask/brew-cask

# Apps
apps=(
  alfred
  clipy
  docker
  dropbox
  evernote
  firefox
  google-chrome
  intellij-idea
  iterm2
  karabiner-elements
  mapture
  slack
  sublime-text3
  virtualbox
  visual-studio-code
  utorrent
  appcleaner
  eclipse-java
  macdown
  microsoft-office
  mactex
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
  graphviz
  vagrant
  texpad
  sequel-pro
  mysqlworkbench
  postico
)

# Manual download list
# UML editor (e.g., violet UML editor)
# MiniUsage
# https://github.com/ptsochantaris/trailer

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
