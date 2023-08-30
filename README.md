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
- Setup fish shell in hyper : Edit .hyper.js config file and change 'shell'
```sh
vi ~/.hyper.js```
```
```sh
	shell: '/opt/homebrew/bin/fish',
	shellArgs: ['--login'],
```

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
- Launch hyper, and setup WSL Debian as shell in hyper : edit hyper preferences and set:
```
	shell: 'wsl.exe',
	shellArgs: ['-d', 'Debian'],
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

## Optional - Setup fish to always start tmux
```sh
vi ~/.config/fish/config.fish
```
add this to attach to an existing session or create a new one
```
echo Attaching ; and tmux a ; or echo Creating ; and tmux
```
## Optionnal - add [hyperterm-summon](https://www.npmjs.com/package/hyperterm-summon) to open hyper with hotkey
```sh
hyper i hyperterm-summon
```
edit hyper preferences and add:
```js
        summon: {
          hideDock: true,
          hideOnBlur: true,
          hotkey: 'Control+Space',
        },
```
