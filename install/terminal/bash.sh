# Import functions
source $TIZZO_DIR/utils/symlink_file.sh

# Symlink the bashrc file to the home directory
symlink_file $TIZZO_DEV_MODE/configs/bashrc ~/.bashrc