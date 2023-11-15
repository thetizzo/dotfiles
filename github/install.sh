#!/bin/sh
#
# GitHub CLI

if test ! $(which gh)
then
  echo "  Installing the GitHub CLI for you."
  if test $(which brew); then
    brew install gh
    exit 0
  elif test $(which apt); then
    # Simple Linux installation instructions here...
    # https://github.com/cli/cli/blob/trunk/docs/install_linux.md
    type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
      && sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
      && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
      && sudo apt update \
      && sudo apt install gh -y 
    exit 0
  else
    echo "  Failed to install GitHub CLI: unrecognized system."
    exit 1
  fi
fi
