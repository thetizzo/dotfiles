# theTizzo's dotfiles

My main goal with this project is to be able to easily move between machines without having to worry the differences in configuration
between these machines. To that end, these dotfiles should be easy to install and update.  It's should also be easy to figure out how
to update the configuration of a specific tool on one system and update it everywhere.

## Installation
```bash
git clone https://github.com/thetizzo/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

## Structure

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/install.os**: Any file named `install.os` is executed when you run `script/bootstrap`. This is expected to install OS level dependencies which might be required by the `install.sh` scripts and is run before `script/install`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.
- **topic/\*.dsymlink**: Any directory with a file named `.dsymlink` will
  to get symlinked into your `$HOME`.  This is create for common config directories
  in the such as `~/.config`.

## Thanks

For many years, I maintained a disorgnanized heap of dotfiles that required manual installation and symlinking any time I
set up a new machine.  Then one day I ran across [Zach Holman's](https://github.com/holman) [dotfiles](https://github.com/holman/dotfiles)
and really liked the layout of the project so I have based the structure and installation scripts of this project on Zach's.
