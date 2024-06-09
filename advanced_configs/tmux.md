# tmux terminal multiplexer

https://github.com/tmux/tmux/wiki

## Install 

### Mac

```sh
brew install tmux
```

### Windows with WSL

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