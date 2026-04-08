set -e

# Color functions for nice output
info() { echo -e "\033[0;34m[INFO]\033[0m $*"; }
success() { echo -e "\033[0;32m[OK]\033[0m $*"; }
warn()    { echo -e "\033[0;33m[WARN]\033[0m $*"; }
error()   { echo -e "\033[0;31m[ERROR] $* \033[0m"; }
indent() { while IFS= read -r line; do echo "  $line"; done }

banner()  { 
  echo -e "\033[0;35m"
  cat << "EOF"

 _   _        _____ _              
| | | |      |_   _(_)             
| |_| |__   ___| |  _ ___________  
| __| '_ \ / _ \ | | |_  /_  / _ \ 
| |_| | | |  __/ | | |/ / / / (_) |
 \__|_| |_|\___\_/ |_/___/___\___/ 
                                   

EOF
  echo -e "\033[0m"
}

# Display the banner
banner

# Install packages necessary for installation
if [ -x "$(command -v apt-get)" ]; then
    info "Installing prereqs with apt..."
    sudo apt-get update > /dev/null 2>&1 | indent
    sudo apt-get install -y git stow 2>&1 | indent
elif [ -x "$(command -v pacman)" ]; then
    info "Installing prereqs with pacman..."
    sudo pacman -S --needed --noconfirm git stow 2>&1 | indent
elif [ -x "$(command -v brew)" ]; then
    info "Installing prereqs with brew..."
    brew update 2>&1 | indent
    brew install git stow 2>&1 | indent
else
    error "No package manager found. Please install manually."
    exit 1
fi

info "Cloning dotfiles repo..."
rm -rf ~/.local/share/tizzo
git clone https://github.com/thetizzo/dotfiles.git ~/.local/share/tizzo 2>&1 | indent
cd ~/.local/share/tizzo

info "Installation starting..."

# set up running environment
export TIZZO_PATH=$HOME/.local/share/tizzo

# Import functions
source $TIZZO_PATH/utils/install.sh

# Install common packages
install less

# Install
stow -S $TIZZO_PATH/dotfiles/bash
