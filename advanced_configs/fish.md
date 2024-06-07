# Fish config

## Fish on windows with WSL

1. Install WSL Debian
	```sh
	wsl.exe --install Debian
	```
2. Install fish in wsl Debian
	```sh
	wsl.exe -d Debian -- sudo sh -c "apt-get update && apt-get install fish"
	```
3. Set fish as default shell in wsl Debian
	```sh
	wsl.exe -d Debian -- sudo chsh -s /usr/bin/fish
	```
4. Launching wsl will now launch a terminal with fish shell
    ```sh
	wsl.exe -d Debian
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