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

# Use bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Use git-completion
# curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# Use brew-completion
if [ -f $(brew --prefix)/etc/bash_completion.d/brew_bash_completion.sh ]; then
    . $(brew --prefix)/etc/bash_completion.d/brew_bash_completion.sh
fi

# Use grunt-completion
eval "$(grunt --completion=bash)"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
