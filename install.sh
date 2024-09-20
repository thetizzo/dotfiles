# Exit immediately if a command exits with a non-zero status
set -e

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing software via brew..."
HOMEBREW_BUNDLE_FILE=~/.local/share/tizzo/Brewfile
brew bundle

# Make fish default shell
FISH_LOC=$(which fish)
grep -q -F $FISH_LOC /etc/shells || echo $FISH_LOC >> /etc/shells
chsh -s $FISH_LOC
