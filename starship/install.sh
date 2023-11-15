#!/bin/sh
#
# starship command prompt

if test ! $(which starship)
then
  echo "> installing starship prompt"
  curl -sS https://starship.rs/install.sh | sh -s -- -y
fi

exit 0
