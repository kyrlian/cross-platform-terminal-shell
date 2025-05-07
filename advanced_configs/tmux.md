# tmux terminal multiplexer

https://github.com/tmux/tmux

## Install

### Mac

```sh
brew install tmux
```

### Windows with WSL

With homebrew:

```sh
wsl.exe -d Ubuntu -- sudo sh -c "brew install tmux"
```

Or, if you prefer apt:

```sh
wsl.exe -d Ubuntu -- sudo sh -c "apt-get update && apt-get install tmux"
```

## Config location

```sh
vi ~/.tmux.conf
```

## Sample config modifications

Enable mouse support, use Control+Space prefix, change to fish shell

```sh
set-option -g prefix C-Space
set -g mouse on
set-option -g default-shell /opt/homebrew/bin/fish
```

See more in [my Tmux config](../assets/tmux/.tmux.conf)

## TMUX plugins & themes

- https://github.com/tmux-plugins/tpm
- https://github.com/catppuccin/tmux

## Link config

On mac/linux you can replace the native config files with links to your custom config files, for example if your custom config files are in `~/assets/`: 

```sh
cd ~/assets/
ln -s ${PWD}/tmux/.tmux.conf ~/.tmux.conf
```

# Resources

- [Tmux wiki](https://github.com/tmux/tmux/wiki)
- [My Tmux config](../assets/tmux/.tmux.conf)
