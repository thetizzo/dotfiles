#!/bin/sh
#
# Homebrew

if test ! $(which brew) -a $(uname) = "Darwin"
then
  echo "  Installing Homebrew for you."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

exit 0