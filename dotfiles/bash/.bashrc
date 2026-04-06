# History control
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=32768
HISTFILESIZE="${HISTSIZE}"


# Autocompletion
source /usr/share/bash-completion/bash_completion


# Aliases
alias be='bundle exec'
alias bo='EDITOR=vim bundle open'
alias blog='bundle exec jekyll serve --drafts'
alias h='heroku'
alias ls='ls -lh'
alias lsa='ls -a'


# Prompt Styles
# Technicolor dreams
force_color_prompt=yes
color_prompt=yes

# Simple prompt with path in the window/pane title and carat for typing line
PS1=$'\uf0a9 '
PS1="\[\e]0;\w\a\]$PS1"

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

# Fuzzy find
if command -v fzf &> /dev/null; then
  source /usr/share/bash-completion/completions/fzf
  source /usr/share/doc/fzf/examples/key-bindings.bash
fi
