# Cross Platform Terminal & Shell <!-- omit in toc -->
Searching for a cross plateform combo : terminal, shell, prompt - for mac and windows.

TOC
- [Intro](#intro)
- [1st try: Hyper - Fish - Tmux](#1st-try-hyper---fish---tmux)
- [2n try: Wezterm - Nushell - Starship](#2n-try-wezterm---nushell---starship)
	- [Quick install](#quick-install)
		- [Macos setup](#macos-setup)
		- [Windows setup](#windows-setup)
	- [More information on my setup](#more-information-on-my-setup)

# Intro

I use MacOS for work, and windows at home, my original setup is mostly the default on each:

- On MacOS: [Iterm2](https://iterm2.com/) with [zsh](https://www.zsh.org/), [ohmyzsh](https://ohmyz.sh/) with the [fishy theme](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#fishy), and [tmux](https://github.com/tmux/tmux/wiki). (I occasionally use [fish](https://fishshell.com/) and [nu](https://www.nushell.sh/), but I've got a too many little aliases and shell scripts around to quit zsh as my main shell)
- On Windows: [Windows Terminal](https://aka.ms/terminal) with [wsl Ubuntu](https://ubuntu.com/desktop/wsl), [fish shell](https://fishshell.com/), and [tmux](https://github.com/tmux/tmux/wiki). (I don't use the terminal so much on windows, that's why I'm trying fish as my main shell)

[VS code](https://code.visualstudio.com/) being my main IDE, and I use [homebrew](https://brew.sh/) on mac and WSL, and [scoop](https://scoop.sh/) on windows as package managers.

As I code more and more at home, and there is more and more cross plateform tools, I started to search for a set of tools I could use on both plateforms.

# 1st try: [Hyper - Fish - Tmux](./previous.md)

# 2n try: Wezterm - Nushell - Starship

For my second try I tried [Alacrity](https://alacritty.org/) but settled on [Wezterm](https://wezfurlong.org/wezterm/index.html) for the ability to split windows (as I can't use [tmux](https://github.com/tmux/tmux/wiki) nor [zellij](https://zellij.dev/) on windows), [nushell](https://www.nushell.sh/) because it seems different enough to warrant learning a new shell and exists both on mac and windows, [Fish](https://fishshell.com/), [Murex](https://murex.rocks/), [Xonsh](https://xon.sh/) as secondary shells via [wsl Ubuntu](https://ubuntu.com/desktop/wsl), [Starship](https://starship.rs/) to customize my prompt, and included a few editors.

- Terminal: [Wezterm](https://wezfurlong.org/wezterm/index.html)
- Shells: [Nushell](https://www.nushell.sh/), [Fish](https://fishshell.com/), [Murex](https://murex.rocks/), [Xonsh](https://xon.sh/)
- Prompt: [Starship](https://starship.rs/)
- Editors: [Nano](https://www.nano-editor.org/), [Neovim](https://neovim.io/), [Helix](https://helix-editor.com/)


## Quick install

### Macos setup

Install everything

```sh
brew install wezterm nushell fish xonsh murex starship nano neovim helix 
```
 	
### Windows setup

Install everything on Windows
   
```sh
scoop install wezterm nu starship nano neovim helix
```

Install WSL Ubuntu
```sh
wsl.exe --install Ubuntu
```

Install everything on WSL with (homebrew)[https://brew.sh/]:
```sh
wsl.exe -d Ubuntu -- sudo sh -c "brew install fish xonsh tmux helix"
```

Or, with apt-get:
```sh
wsl.exe -d Ubuntu -- sudo sh -c "sudo apt update"
wsl.exe -d Ubuntu -- sudo sh -c "sudo add-apt-repository ppa:maveonair/helix-editor"
wsl.exe -d Ubuntu -- sudo sh -c "apt-get update && apt-get install fish xonsh tmux helix"
```

## More information on my setup  

- [Fish](./advanced_configs/fish.md)
- [Helix](./advanced_configs/helix.md)
- [Murex](./advanced_configs/murex.md)
- [Neovim](./advanced_configs/neovim.md)
- [Nushell](./advanced_configs/nushell.md)
- [Starship](./advanced_configs/starship.md)
- [Wezterm](./advanced_configs/wezterm.md)
- [XONSH](./advanced_configs/xonsh.md)
- [zsh](./advanced_configs/zsh.md)
