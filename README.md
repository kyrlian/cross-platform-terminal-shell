# cross-platform-terminal-shell
How to setup a cross plateform terminal + shell for mac, linux, and windows WSL

- Terminal: [hyper](https://hyper.is/)
- Shell: [fish](https://fishshell.com/)
- Multiplexer: [tmux](https://github.com/tmux/tmux/wiki)

## Macos setup:
- Install fish and tmux
```sh
brew install hyper fish tmux
```
- Donwload and install hyper [hyper](https://hyper.is/)

## Windows setup:
- Install WSL Debian
```sh
wsl.exe --install Debian
```
- Install fish and tmux in wsl Debian
```sh
wsl.exe -d Debian -- sudo sh -c "apt-get update && apt-get install fish tmux"
```
- Set fish as default shell in wsl Debian
```sh
wsl.exe -d Debian -- sudo chsh -s /usr/bin/fish
```
- Donwload and install hyper [hyper](https://hyper.is/)
- Launch hyper, and setup WSL Debian as shell in hyper : edit preferences and set:
```
	shell: 'wsl.exe',
	shellArgs: ['-d', 'Debian'],
```

## Optional - Setup fish to always start tmux
```sh
vi ~/.config/fish/config.fish
```
Add
```
 tmux a || tmux
```

## Optional - edit tmux settings
```sh
vi ~/.tmux.conf
```
add
```
set-option -g prefix C-Space
set -g mouse on 
```


