#!/bin/sh
#
# install n node version manager

if test ! $(which n)
then
  echo "  Installing n node version manager"
  curl -L https://bit.ly/n-install | bash -s -- -y
fi

exit 0