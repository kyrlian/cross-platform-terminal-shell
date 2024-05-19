# cross-platform-terminal-shell <!-- omit in toc -->
Searching for a cross plateform combo terminal, shell, prompt for mac and windows

- [Alacrity - Nushell - Starship - Zellij - Helix](#alacrity---nushell---starship---zellij---helix)
	- [Macos setup](#macos-setup)
	- [Windows setup](#windows-setup)
	- [Tips](#tips)
	- [Ressources](#ressources)
- [Hyper - Fish - Tmux](#hyper---fish---tmux)
	- [Macos setup](#macos-setup-1)
	- [Windows setup](#windows-setup-1)
	- [Optional config](#optional-config)

# Alacrity - Nushell - Starship - Zellij - Helix

- Terminal: [Alacrity](https://alacritty.org/)
- Shell: [Nushell](https://www.nushell.sh/)
- Prompt: [Starship](https://starship.rs/)
- Multiplexer: [zellij](https://zellij.dev/) (on macOS)
- Editor: [helix](https://helix-editor.com/)
  
## Macos setup

`TODO - Test and complete`

1. Install alacritty and nushell
	```sh
	brew install alacritty nu starship helix
	```

1. Set nu as default shell in alacritty config
  
	Create and edit `$HOME/.config/alacritty/alacritty.toml` and add
	```toml
	[shell]
	program = "nu"
	```

## Windows setup

1. Install alacritty, nu, starship, helix
   
	```sh
	scoop install alacritty nu starship helix
	```
	Start `alacritty` and enter nushell with `nu`.

2. Set nu as default shell in alacritty config
   
	Create and edit `%APPDATA%\alacritty\alacritty.toml`
	```sh
	cd ~\AppData\Roaming\
	mkdir alacritty
	helix alacritty.toml
	```

	add:
	```toml
	[shell]
	program = "nu"
	```

	And re-start alacritty to get in nu.

3. Set helix as nu default editor

	Edit `config.nu`
	```nu
	cd ~\AppData\Roaming\nushell\
	helix config.nu
	```

	Search for `buffer_editor`, and add `helix`:
	```nu
	buffer_editor: "helix" 
	```

4. Setup starship as nu prompt
	
	Go to `%APPDATA%\nushell` and create the starship overlay
	```sh
	cd ~\AppData\Roaming\nushell\
	starship init nu | save -f starship.nu
	```

	Edit nu config with
	```sh
	config nu
	```

	Add the starship overlay at the end of the nu config
	```sh
	use starship.nu
	```

## Tips
- My [Nushell tips and tricks](./nushell-tips.md)

## Ressources
- https://dev.to/yjdoc2/completely-oxidizing-my-terminal-setup-43d8
- https://github.com/alacritty/alacritty/tree/master/alacritty#configuration
- https://alacritty.org/config-alacritty.html

# Hyper - Fish - Tmux

A cross plateform combo terminal + shell + multiplexer for mac and windows WSL

- Terminal: [hyper](https://hyper.is/)
- Shell: [fish](https://fishshell.com/)
- Multiplexer: [tmux](https://github.com/tmux/tmux/wiki)

## Macos setup
1. Install fish and tmux
	```sh
	brew install hyper fish tmux
	```
1. Setup fish shell in hyper : Edit `.hyper.js` config file and change `shell`
	```sh
	vi ~/.hyper.js
	```

	```sh
		shell: '/opt/homebrew/bin/fish',
		shellArgs: ['--login'],
	```

## Windows setup
1. Install WSL Debian
	```sh
	wsl.exe --install Debian
	```
1. Install fish and tmux in wsl Debian
	```sh
	wsl.exe -d Debian -- sudo sh -c "apt-get update && apt-get install fish tmux"
	```
1. Set fish as default shell in wsl Debian
	```sh
	wsl.exe -d Debian -- sudo chsh -s /usr/bin/fish
	```
1. Donwload and install hyper [hyper](https://hyper.is/)
	```sh
	scoop install hyper
	```

1. Launch hyper, and setup WSL Debian as shell in hyper : edit hyper preferences and set:
	```
		shell: 'wsl.exe',
		shellArgs: ['-d', 'Debian'],
	```

## Optional config

- Edit tmux settings

	```sh
	vi ~/.tmux.conf
	```

	Enable mouse support and use Control+Space prefix

	```
	set-option -g prefix C-Space
	set -g mouse on 
	```

- Setup fish to always start tmux

	```sh
	vi ~/.config/fish/config.fish
	```

	add this to attach to an existing session or create a new one

	```
	echo Attaching ; and tmux a ; or echo Creating ; and tmux
	```

- Add [hyperterm-summon](https://www.npmjs.com/package/hyperterm-summon) to open hyper with hotkey

	Install hyperterm-summon
	```sh
	hyper i hyperterm-summon
	```

	Edit hyper preferences and add:

	```js
			summon: {
			hideDock: true,
			hideOnBlur: true,
			hotkey: 'Control+Shift+Space',
			},
	```
