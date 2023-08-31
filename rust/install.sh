#!/bin/sh
#
# rustup

if test ! $(which rustup)
then
  echo "> installing rust"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
fi

exit 0