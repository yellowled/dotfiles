export CLICOLOR=1

# If present, get .bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Load the shell dotfiles, and then some:
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Append to the Bash history file, rather than overwriting it
shopt -s histappend
# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Use completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

if [ -f ~/.npm-completion.bash ]; then
    . ~/.npm-completion.bash
fi

if [ -f $(brew --prefix)/etc/bash_completion.d/brew_bash_completion.sh ]; then
    . $(brew --prefix)/etc/bash_completion.d/brew_bash_completion.sh
fi

eval "$(grunt --completion=bash)"
