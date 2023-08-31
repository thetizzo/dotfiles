if [[ -a /opt/homebrew/bin/brew ]]
then
  # Homebrew PATH and config setup
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi