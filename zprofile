# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Direnv load
eval "$(direnv hook zsh)"

# Rbenv
eval "$(rbenv init - zsh)"

# Terraform Autocomplete
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# Stuff
export DOTFILES=~/code/mine/dotfiles