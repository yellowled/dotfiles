# PATH
export PATH=/usr/local/sbin:$PATH

# Where is oh-my-zsh?
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="suvash"

# Plugins
plugins=(
    brew
    gitfast
    npm
)

source $ZSH/oh-my-zsh.sh

# Language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Editor
export EDITOR='nano'

# Aliases
alias npm-global="npm list -g --depth=0"
alias npm-outdated="npm outdated -g --depth=0"
alias flushdns="dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
