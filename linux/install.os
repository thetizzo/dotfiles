if test ! "$(uname)" = "Linux"
  then
  exit 0
fi

# Install build-essential which contains gcc, g++, make and some other
# useful development tools. Details here: https://packages.debian.org/sid/build-essential
sudo apt-get install -y build-essential
