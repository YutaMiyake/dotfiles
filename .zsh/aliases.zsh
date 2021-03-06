# navigations
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# shortcuts
alias h="history"
alias cls="clear"
alias g="git"
alias rm='rmtrash'
alias df='df -h'
alias k="kubectl"
alias kx="kubectx"
alias kn="kubens"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias vim='nvim'
alias tf='terraform'

# colordiff
if [[ -x `which colordiff` ]]; then
 alias diff='colordiff -u'
else
 alias diff='diff -u'
fi
export LESS='-R'

# rust command
alias ls='exa'
alias l='exa -lh'
alias la='exa -ahl --git'
alias cat="bat"
alias ci="zi"
alias cd="z"

# Apps
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# IP addresses
alias localip="ipconfig getifaddr en0"

# Show/hide hidden files in Finder
alias showFiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Lock the screen (when going AWAY FROM KEYBOARD(AFK))
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# reload the zsh
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

