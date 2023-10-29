#!/bin/sh
#
# Gobrew

if test ! $(which nvim)
then
  echo "  Installing neovim for you."
  brew install neovim
fi

exit 0
