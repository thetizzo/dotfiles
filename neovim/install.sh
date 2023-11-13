#!/bin/sh
#
# neovim

if ! command -v nvim &> /dev/null; then
  echo "  Installing neovim for you."
  if command -v brew &> /dev/null
  then
    brew install neovim
    exit 0
  elif command -v apt &> /dev/null
  then
    sudo apt install -y neovim
    exit 0
  else
    echo "  Failed to install neovim: unrecognized system."
    exit 1
  fi
fi
