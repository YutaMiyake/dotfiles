### set karabiner-elements
cp ../karabiner.json ~/.config/karabiner/karabiner.json

### iterm2: install powerline font
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

### change key repeat
defaults write -g KeyRepeat -float 1.3
defaults write -g InitialKeyRepeat -int 10
