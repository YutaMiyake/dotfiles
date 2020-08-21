## steps
### clone dotfiles
mkdir -p ~/ghq/github.com/YutaMiyake/
cd ~/ghq/github.com/YutaMiyake/
git clone https://github.com/YutaMiyake/dotfiles
cd dotfiles

bash brew.sh

bash others/brewcask.sh

make deploy

## change input source to Google's

## change shortcut

## turn on darkmode

## set alfred

## set karabiner-elements
cp karabiner.json ~/.config/karabiner/karabiner.json

## import soralized.json to iterm2

## change key repeat
defaults write -g KeyRepeat -float 1.3
defaults write -g InitialKeyRepeat -int 10

## copy mas list and install

## copy files from old pc: .ssh/ .zsh_history

## set up gcloud
gcloud init
