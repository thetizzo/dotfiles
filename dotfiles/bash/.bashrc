# History control
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=32768
HISTFILESIZE="${HISTSIZE}"


# Autocompletion
source /usr/share/bash-completion/bash_completion

# Set default editor
export EDITOR=nvim
export TIZZO_PATH=$HOME/.local/share/tizzo

# Aliases
alias be='bundle exec'
alias bo='EDITOR=vim bundle open'
alias blog='bundle exec jekyll serve --drafts'
alias ls='ls -lh --color=auto'
alias grep='grep --color=auto'
alias lsa='ls -a'
alias reload='source ~/.bashrc'
alias vim='nvim'


# Prompt Styles
# Technicolor dreams
force_color_prompt=yes
color_prompt=yes

# Simple prompt with path in the window/pane title and carat for typing line
# Arch Linux default: PS1='[\u@\h \W]\$ '
#PS1=$'\uf0a9 '
#PS1="\[\e]0;\w\a\]$PS1"

# Git branch in console prompt
# parse_git_branch() {
#   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }
# export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "


# Homebrew
if type brew &>/dev/null; then
  # Update less than all the time
  export HOMEBREW_AUTO_UPDATE_SECS=600000

  # Autocompletion
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

# Starship command prompt
eval "$(starship init zsh)"

# Stash environment variables and other local config in ~/.localrc. This means 
# they'll stay out of the main dotfiles repository (which may be public, like 
# this one), but you'll have access to them in your scripts.
if [[ -a ~/.localrc ]]
then
  echo "~/.localrc"
  source ~/.localrc
fi

