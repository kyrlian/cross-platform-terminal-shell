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

Enable mouse support and use Control+Space prefix

```sh
set-option -g prefix C-Space
set -g mouse on
```

# Resources

- [Tmux wiki](https://github.com/tmux/tmux/wiki)
