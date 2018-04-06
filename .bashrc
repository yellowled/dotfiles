# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Explicitly set PHP version
PHP_VERSION='php7.0.27'

# Aliases for use with MAMP
alias mysql='/Applications/MAMP/Library/bin/mysql'
alias composer='php /Applications/MAMP/bin/php/${PHP_VERSION}/bin/composer.phar'

export PATH=/Applications/MAMP/bin/php/${PHP_VERSION}/bin:$PATH
