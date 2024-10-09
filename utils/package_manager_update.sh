package_manager_update () {
  if [ -x "$(command -v apt-get)" ]; then
    sudo apt-get update
  elif [ -x "$(command -v brew)" ]; then
    brew update
  else
    echo "No package manager found. Please install $1 manually."
  fi
}