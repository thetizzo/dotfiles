# theTizzo's dotfiles

Stand back in awe of the brilliance.

# Installation

Setup workspace
  * Create `~/code` working directory
  * Clone `dotfiles` repo into the working directory

## Install CLI binary
clone dotfiles repo
Add the binary to the PATH

## Run installation
```sh
$ tizzo install
```

## Expectations

* These should be careful not to overwrite anything existing.
* Can install/reinstall individual packages (i.e. `thetizzo install brew`)
* Uninstall?

# Steps during installation

1. Clone dotfiles repo
1. Link dotfiles in home profile
  * bash_profile
  * aliases
  * zshrc
  * git_aliases
  * gitignore_global
  * irbrc
  * vimrc
  * aws/*?
1. Make ~/code directory
1. Vim configuration
  * install plugins
1. Installations
  * Tools:
    * homebrew
    * git
    * oh-my-zsh
  * Languages:
    * ruby
    * rust
    * python