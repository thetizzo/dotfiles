#!/bin/sh
#
# starship command prompt

if test ! $(which starship)
then
  echo "> installing starship prompt"
  cargo install starship --locked
fi

exit 0