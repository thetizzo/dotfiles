#!/bin/sh
#
# rustup

if test ! $(which rustup)
then
  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    echo "  Installing Rust for you."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
  fi
fi

exit 0