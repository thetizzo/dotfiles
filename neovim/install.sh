#!/bin/sh
#
# neovim

if test ! $(which nvim); then
  echo "  Installing neovim for you."
  if test $(which brew); then
    brew install neovim
    exit 0
  elif test $(which apt); then
    sudo apt install -y neovim
    exit 0
  else
    echo "  Failed to install neovim: unrecognized system."
    exit 1
  fi
fi
