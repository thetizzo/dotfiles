if test $(which brew)
then
  # Homebrew PATH and config setup
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi