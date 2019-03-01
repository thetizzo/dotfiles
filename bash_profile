export CLICOLOR=cons25
export CODE_HOME="$HOME/code"

DOTFILES="$CODE_HOME/dotfiles"

# This is where the magic happens
source "$HOME/.aliases"
source "$DOTFILES/secrets"

if [ -e "$DOTFILES/work_profile" ]
then
  source "$DOTFILES/work_profile"
fi

# Homebrew - Update less than all the time
export HOMEBREW_AUTO_UPDATE_SECS=600000

# Set Default Editor
export EDITOR=vim

# MySQL
export PATH="/usr/local/mysql/bin:$PATH"
export PATH=$PATH:"/usr/local/mysql/bin"
export PATH=$PATH:"/usr/local/mysql/support-files"
export PATH="$PATH:/usr/local/sbin"
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"

# Git branch in console prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# REMOVE -- removing this temporarily to see if it's been fixed since Sierra
# To fix ssh keychain since OSX Sierra broke it
# ssh-add -K
# REMOVE -- removing this temporarily to see if it's been fixed since Sierra

# rbenv - always do this last so that ruby stuff is at the beginning of the path
eval "$(rbenv init -)"

# This finds any running process by name and kills it
function murder {
  kill -11 $(ps aux | grep $1 | grep -v grep | awk '{print $2}')
}

# Elixir
export PATH="$PATH:/usr/local/bin/elixir"

# Android Emulator environment variables that need to be present to
# open the emulator from Expo.
export ANDROID_SDK="/Users/myuser/Library/Android/sdk"
export PATH="/Users/myuser/Library/Android/sdk/platform-tools:$PATH"
