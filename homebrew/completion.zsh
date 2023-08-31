if (( $+commands[brew] ))
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi
