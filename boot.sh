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

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning dotfiles..."
rm -rf ~/.local/share/tizzo
git clone https://github.com/thetizzo/dotfiles.git ~/.local/share/tizzo >/dev/null
cd ~/.local/share/tizzo

echo "Installation starting..."
source ~/.local/share/tizzo/install.sh
