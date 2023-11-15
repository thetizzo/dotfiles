#!/bin/sh
#
# install n node version manager

# For reasons I don't totally understand, checking the existence of
# the nvm command with `test $(which nvm)` doesn't work correctly.
# I think this might be because nvm is a shell function and not a binary
# or a shell builtin but I'm not totally sure what the difference is.
if [ "$(command -v nvm)" = "nvm" ]; then
  if test $(which brew); then
  echo "  Installing nvm node version manager"
    brew install nvm
    exit 0
  elif test $(which apt); then
	  echo "HERE"
    export NVM_DIR="$HOME/.nvm" && (
      git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
      cd "$NVM_DIR"
      git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
    ) && \. "$NVM_DIR/nvm.sh"
    exit 0
  else
    echo "  Failed to install nvm: unrecognized system"
    exit 1
  fi
fi
