#!/bin/sh
#
# rbenv and related

if $(command -v brew)
then
  if "$(uname)" = "Darwin"
  then
    echo "  Installing Homebrew for you."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
fi

exit 0