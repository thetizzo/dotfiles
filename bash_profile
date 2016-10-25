export CLICOLOR=cons25

# This is where the magic happens
source "$HOME/.aliases"

export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="/usr/local/mysql/bin:$PATH"
export EDITOR=vim

# MC Stuff
export MC_COVERAGE=enabled
export PATH=$PATH:"/usr/local/mysql/bin"
export PATH=$PATH:"/usr/local/mysql/support-files"
export PATH=$PATH:/usr/local/sbin
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# Git branch in console prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# For homebrew searching
export HOMEBREW_GITHUB_API_TOKEN="07252b7ff3271664f62e2280cb09517ae0d3576e"

# To fix ssh keychain since OSX Sierra broke it
ssh-add -K

# rbenv - always do this last so that ruby stuff is at the beginning of the path
eval "$(rbenv init -)"
/usr/local/bin/rbenv rehash

