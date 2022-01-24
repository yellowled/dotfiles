# PATH
export PATH=$PATH:/opt/homebrew/bin

# Lang environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Editor
export EDITOR='nano'

# Path to oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="suvash"

# nvm plugin settings
export NVM_AUTO_USE=true
export NVM_COMPLETION=true

# Plugins
plugins=(
    brew
    gitfast
    npm
    zsh-nvm
)

source $ZSH/oh-my-zsh.sh
