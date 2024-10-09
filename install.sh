# Exit immediately if a command exits with a non-zero status
set -e

# set up running environment
if [ "$TIZZO_DEV_MODE" = "true" ]; then
  export TIZZO_DIR=$HOME/code/dotfiles
else
  export TIZZO_DIR=$HOME/.local/share/tizzo
fi

# Import functions
source $TIZZO_DIR/utils/install.sh
source $TIZZO_DIR/utils/package_manager_update.sh

if [ ! "$TIZZO_DEV_MODE" = "true" ]; then
  package_manager_update
fi

# Install
source $TIZZO_DIR/install/terminal/bash.sh
#install 'fish'

# Configure

# Make fish default shell
# echo "Setting fish as default shell..."
# FISH_LOC=$(which fish)
# echo $FISH_LOC
# chsh -s $FISH_LOC
