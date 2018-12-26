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
[ -f $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion

[ -f ~/.npm-completion.bash ] && . ~/.npm-completion.bash
