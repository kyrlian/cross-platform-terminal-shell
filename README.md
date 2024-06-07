# Cross Platform Terminal & Shell <!-- omit in toc -->
Searching for a cross plateform combo : terminal, shell, prompt - for mac and windows.

TOC
- [Intro](#intro)
- [1st try: Hyper - Fish - Tmux](#1st-try-hyper---fish---tmux)
	- [Macos setup](#macos-setup)
	- [Windows setup](#windows-setup)
	- [Advanced config](#advanced-config)
	- [Verdict and lessons learned](#verdict-and-lessons-learned)
- [2nd try - Wezterm - Nushell - Starship](#2nd-try---wezterm---nushell---starship)
	- [Macos setup](#macos-setup-1)
	- [Windows setup](#windows-setup-1)
	- [Common setup](#common-setup)
	- [Advanced config](#advanced-config-1)

# Intro

I use MacOS for work, and windows at home, my original setup is mostly the default on each:

- On MacOS: [Iterm2](https://iterm2.com/) with [zsh](https://www.zsh.org/), [ohmyzsh](https://ohmyz.sh/) with the [fishy theme](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#fishy), and [tmux](https://github.com/tmux/tmux/wiki). (I occasionally use [fish](https://fishshell.com/) and [nu](https://www.nushell.sh/), but I've got a too many little aliases and shell scripts around to quit zsh as my main shell)
- On Windows: [Windows Terminal](https://aka.ms/terminal) with [wsl Debian](https://wiki.debian.org/InstallingDebianOn/Microsoft/Windows/SubsystemForLinux), [fish shell](https://fishshell.com/), and [tmux](https://github.com/tmux/tmux/wiki). (I don't use the terminal so much on windows, that's why I'm trying fish as my main shell)

[VS code](https://code.visualstudio.com/) being my main IDE, and I use [homebrew](https://brew.sh/) on mac and [scoop](https://scoop.sh/) on windows as package managers.

As I code more and more at home, and there is more and more cross plateform tools, I started to search for a set of tools I could use on both plateforms.

# 1st try: Hyper - Fish - Tmux

My first try to get a cross plateform combo terminal + shell + multiplexer for mac and windows WSL was:

- Terminal: [hyper](https://hyper.is/)
- Shell: [fish](https://fishshell.com/)
- Multiplexer: [tmux](https://github.com/tmux/tmux/wiki)

## Macos setup

1. Install fish and tmux
	```sh
	brew install hyper fish tmux
	```
2. Setup fish shell in hyper : Edit `~/.hyper.js` config file and change `shell`
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

## Advanced config

- [hyperterm](./advanced_configs/hyperterm.md)
- [fish](./advanced_configs/fish.md)
- [tmux](./advanced_configs/tmux.md)

## Verdict and lessons learned
- Hyper is a bit too slow to start for me as I tend to open/close my terminal a lot
- Fish is fun, but not POSIX so my old aliases and muscle memory is lost, and it's not "modern" enough to warrant learning for me. I'm probably too late for this one
- In the end I kept getting back to iterm2/win terminal and zsh

# 2nd try - Wezterm - Nushell - Starship

For my second try I tried [Alacrity](https://alacritty.org/) but settled on [Wezterm](https://wezfurlong.org/wezterm/index.html) for the ability to split windows (as I can't use [tmux](https://github.com/tmux/tmux/wiki) nor [zellij](https://zellij.dev/) on windows), [nushell](https://www.nushell.sh/) because it seems different enough to warrant learning a new shell, and [Murex](https://murex.rocks/) as secondary shell to keep a POSIX option, [Starship](https://starship.rs/) to customize my prompt, and included a few editors.

- Terminal: [Wezterm](https://wezfurlong.org/wezterm/index.html)
- Shells: [Nushell](https://www.nushell.sh/), [Murex](https://murex.rocks/)
- Prompt: [Starship](https://starship.rs/)
- Editors: [nano](https://www.nano-editor.org/), [neovim](https://neovim.io/), [helix](https://helix-editor.com/)
  
## Macos setup

1. Install everything

	```sh
	brew install wezterm nu murex starship nano neovim helix
	```
	Start `wezterm` and enter nushell with `nu`.

2. Customize nu PATH

	Create a `custom_config.nu` file (I have mine in ~/scripts)
	```sh
	vi ~/scripts/custom_config.nu
	```
	add
	```sh
	use std *
	path add /opt/homebrew/bin /usr/local/bin
	```
	
	Then edit `config.nu` to load your custom profile:
	```sh
	vi $nu.config-path
	```
	
	Add at the end:
	```sh
	source '~/scripts/custom_config.nu' 
	```
	Then continue the [Common setup](#common-setup)
 	
## Windows setup

1. Install everything
   
	```sh
	scoop install alaweztermcritty nu starship nano neovim helix
	```

2. [Install Murex shell in WSL](./advanced_configs/murex.md#windows-with-wsl)

3. Start `wezterm` and enter nushell with `nu`.

4. Then continue the [Common setup](#common-setup)

## Common setup

2. Set `nu` as default shell in `wezterm` config
   
	Open `wezterm` config `~/.wezterm.lua` and add:

	```lua
	local wezterm = require 'wezterm'
	local config = wezterm.config_builder()

	-- This is where you actually apply your config choices

	-- Changing the color scheme:
	config.color_scheme = 'catppuccin-mocha'
	-- config.color_scheme = 'dracula'

	-- Set default shell
	config.default_prog = { 'nu', '-l' }

	-- and finally, return the configuration to wezterm
	return config
	```

	**NOTE**: On macos with homebrew, use the full path `/opt/homebrew/bin/nu`

	Then re-start wezterm to get in nu.

3. Set nu default editor
   
	Edit nu config
	```sh
	nano $nu.config-path
	```
	Search for `buffer_editor`, and add your prefered editor:
	```sh
	buffer_editor: "hx" 
	```
 
4. Setup starship as nu prompt
  
  	Go to nu config directory using `$nu.config-path` and create the starship overlay
	```sh
	cd ($nu.config-path | path dirname)
	starship init nu | save -f starship.nu
	```
  	Edit nu config
	```sh
	config nu
	```
	Add the starship overlay at the end of the nu config
	```sh
	use starship.nu
	```

## Advanced config

- [Alacritty](./advanced_configs/alacritty.md)
- [Fish](./advanced_configs/fish.md)
- [Helix](./advanced_configs/helix.md)
- [Murex](./advanced_configs/murex.md)
- [Neovim](./advanced_configs/neovim.md)
- [Nushell](./advanced_configs/nushell.md)
- [Starship](./advanced_configs/starship.md)
- [TMUX](./advanced_configs/tmux.md)
- [Wezterm](./advanced_configs/wezterm.md)
- [XONSH](./advanced_configs/xonsh.md)
