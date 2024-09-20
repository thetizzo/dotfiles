# Exit immediately if a command exits with a non-zero status
set -e

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing software via brew..."
HOMEBREW_BUNDLE_FILE=~/.local/share/tizzo/Brewfile
brew bundle
