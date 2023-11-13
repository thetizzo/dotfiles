#!/bin/sh
#
# rbenv and related

if test ! $(which zsh); then
  echo "  Installing zsh"
  if test $(which apt); then
    sudo apt install -y zsh
    chsh -s /bin/zsh
  else
    echo "  Failed to install zsh: unrecognized system"
    exit 1
  fi
fi

exit 0
