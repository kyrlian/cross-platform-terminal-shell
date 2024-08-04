# Fish shell

https://fishshell.com/

## Install 

### Mac

```sh
brew install fish
```

### Windows with WSL (Ubuntu)

With hombrew

```sh
wsl.exe -d Ubuntu -- sudo sh -c "brew install fish"
```

Or, if you prefer apt:

```sh
wsl.exe -d Ubuntu -- sudo sh -c "apt-get update && apt-get install fish"
```

## Config location

```sh
~/.config/fish/config.fish
```


Add this to run a custom config:
```sh
if status is-interactive
    # Commands to run in interactive sessions can go here
    set customconf /mnt/.../custom_config.fish
    test -e $customconf ; and source $customconf
end
```

## Tmux

Setup fish to always start tmux
  
```sh
vi ~/.config/fish/config.fish
```

add this to attach to an existing session or create a new one

```sh
echo Attaching ; and tmux a ; or echo Creating ; and tmux
```

## Ressources

- [Fish shell](https://fishshell.com/)
- [My fish config](../assets/fish/custom_config.fish)