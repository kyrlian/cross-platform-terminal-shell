# Fish shell

https://fishshell.com/

## Install 

### Mac

```sh
brew install fish
```

### Windows with WSL (Ubuntu)

With homebrew:

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


Add this to run a custom config (here copied to `~/.config/fish/custom_config.fish`):
```sh
if status is-interactive
    # Commands to run in interactive sessions can go here
    set customconf {$HOME}/.config/fish/custom_config.fish
    test -e $customconf ; and source $customconf
end
```

## Link config

On mac/linux you can replace the native config files with links to your custom config files, for example if your custom config files are in `~/assets/`: 

```sh
cd ~/assets/
ln -s ${PWD}/fish/local_profile_mac.fish ~/.config/fish/local_profile_mac.fish
ln -s ${PWD}/fish/custom_config.fish ~/.config/fish/custom_config.fish
ln -s ${PWD}/fish/config.fish ~/.config/fish/config.fish
```
(I have split my config in several files)

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
