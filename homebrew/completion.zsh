if test $(which brew)
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi
