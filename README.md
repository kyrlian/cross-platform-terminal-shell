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
- Install Debian via windows store of via the wsl --install command
```sh
wsl.exe --install Debian
```
- Launch wsl debian and install fish and tmux
```sh
wsl.exe -d Debian --  sudo apt-get update && sudo apt-get install fish tmux
```
- Donwload and install hyper [hyper](https://hyper.is/)
- Launch hyper, and setup WSL Debian + Fish as shell in hyper : edit preferences and set:
```
	shell: 'wsl.exe',
	shellArgs: ['-d', 'Debian', 'fish'],
```
