#!/bin/sh
#
# install n node version manager

if test ! $(which nvm)
then
  echo "  Installing nvm node version manager"
  brew install nvm
fi

exit 0
