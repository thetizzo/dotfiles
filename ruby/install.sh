#!/bin/sh
#
# rbenv and related

if test ! $(which rbenv)
then
  echo "  Installing rbenv"
  curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
fi

exit 0