
" Plugins
" Install Vim new plugins as git submodules
"   git submodule add --name $NAME $URL $DEST
"   $NAME = something human readable (e.g. vim-sensible)
"   $URL = link to github repo
"   $DEST = vim/pack/plugins/opt/$NAME
"      -> always add to opt directory so we can optionally load plugins below
"      -> adding to `vim/pack/plugins/start` will autoload the plugins
" Example:
"   git submodule add --name vim-sensible https://github.com/tpope/vim-sensible.git vim/pack/plugins/opt/vim-sensible
"
if &loadplugins
  packadd! vim-sensible
endif

" Turns on current line number
set number

" Turn on relative line numbers
set relativenumber

" Turn on fuzzy find
set rtp+=/usr/local/opt/fzf

" Spaces over tabs
set tabstop=4 shiftwidth=2 softtabstop=0 expandtab smarttab

" Syntax highlighting
syntax on
