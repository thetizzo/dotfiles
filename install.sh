set -e

ascii_art="

 _   _        _____ _              
| | | |      |_   _(_)             
| |_| |__   ___| |  _ ___________  
| __| '_ \ / _ \ | | |_  /_  / _ \ 
| |_| | | |  __/ | | |/ / / / (_) |
 \__|_| |_|\___\_/ |_/___/___\___/ 
                                   

"

echo -e "$ascii_art"

# Install packages necessary for installation
if [ -x "$(command -v apt-get)" ]; then
    echo "Installing prereqs with apt..."
    sudo apt-get update >/dev/null
    sudo apt-get install -y git stow
elif [-x "$(command -v pacman)" ]; then
    echo "Installing prereqs with pacman..."
    sudo pacman -S --needed --noconfirm git stow
elif [ -x "$(command -v brew)" ]; then
    echo "Installing prereqs with brew..."
    brew update
    brew install git stow
else
    echo "No package manager found. Please install manually."
    exit 1
fi

echo "Cloning dotfiles repo..."
rm -rf ~/.local/share/tizzo
git clone https://github.com/thetizzo/dotfiles.git ~/.local/share/tizzo >/dev/null
cd ~/.local/share/tizzo

echo "Installation starting..."

# set up running environment
export TIZZO_PATH=$HOME/.local/share/tizzo

# Import functions
source $TIZZO_PATH/utils/install.sh

# Install
source $TIZZO_PATH/install/terminal/bash.sh
