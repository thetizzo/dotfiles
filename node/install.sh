#!/bin/sh
#
# install n node version manager

if test ! $(which n)
then
  echo "  Installing n node version manager"
  if test $(which brew)
  then
    brew install n
  else
    curl -L https://bit.ly/n-install | bash
  fi
fi

exit 0