# Stow install for dotfiles
# If a conflict is found a backup of the existing file will be made before the symlink is created
stow_install() {
  STOW_TARGET=$HOME
  STOW_DIR=$TIZZO_PATH/dotfiles
  PACKAGES=$(ls $STOW_DIR)

  conflicts=$(stow -n --dir=$STOW_DIR --target=$STOW_TARGET $PACKAGES 2>&1 | grep -oP 'existing target \K\S+')

  # Resolve conflicts
  for f in $conflicts; do
    echo "Backing up $STOW_TARGET/$f -> $STOW_TARGET/$f.bak"
    mv "$STOW_TARGET/$f" "$STOW_TARGET/$f.bak"
  done

  # Install dotfiles with stow
  stow --dir="$STOW_DIR" --target="$STOW_TARGET" $PACKAGES
}
