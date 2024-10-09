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

if [ -x "$(command -v apt-get)" ]; then
    echo "Installing git with apt..."
    sudo apt-get update >/dev/null
    sudo apt-get install -y git >/dev/null
elif [ -x "$(command -v brew)" ]; then
    echo "Installing git with brew..."
    brew update >/dev/null
    brew install git >/dev/null
else
    echo "No package manager found. Please install $1 manually."
    exit 1
fi

echo "Cloning dotfiles repo..."
rm -rf ~/.local/share/tizzo
git clone https://github.com/thetizzo/dotfiles.git ~/.local/share/tizzo >/dev/null
cd ~/.local/share/tizzo

echo "Installation starting..."
source ~/.local/share/tizzo/install.sh
