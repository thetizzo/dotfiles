# Install with the correct package manager
function install {
  echo "Installing $1..."

  if [ -x "$(command -v apt-get)" ]; then
    sudo apt-get install $1
  elif [ -x "$(command -v pacman)" ]; then
    sudo pacman -S --needed --noconfirm $1
  elif [ -x "$(command -v brew)" ]; then
    brew install $1
  else
    echo "No package manager found. Please install $1 manually."
  fi
}
