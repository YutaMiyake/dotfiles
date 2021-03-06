# Install apps with homebrew with brew-cast
# brew-cast homepage: http://caskroom.io/
# search cask: http://caskroom.io/search

# install brew-cask
brew install caskroom/cask/brew-cask

# tap
brew tap dteoh/sqa #sloqquitapps

# Apps
apps=(
  alfred
  clipy
  docker
  dropbox
  evernote
  firefox
  google-chrome
  google-cloud-sdk
  intellij-idea
  iterm2
  karabiner-elements
  mapture
  slack
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
  transmit
  1password
  xquartz
  wireshark
  graphviz
  vagrant
  texpad
  sequel-pro
  slowquitapps
  mysqlworkbench
  postico
  hyperswitch
)


# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew install --cask --appdir="/Applications" ${apps[@]}

# fonts
fonts=(
  google-japanese-ime # Hiragana & Alphabet http://www.google.co.jp/ime/index.html
)

# install fonts
echo "installing fonts..."
brew install --cask ${fonts[@]}

# Remove outdated versions from the cellar.
brew cleanup
