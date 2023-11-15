#!/bin/sh
#
# nerdfonts

if test $(which brew); then
  brew tap homebrew/cask-fonts &&
  brew install --cask font-fira-code-nerd-font
else
  mkdir -p ~/.local/share/fonts
  cd ~/.local/share/fonts && \
  curl -fLO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.tar.xz && \
  tar -xf FiraCode.tar.xz
fi
