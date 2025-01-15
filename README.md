# Cross Platform Terminal & Shell <!-- omit in toc -->
Searching for a cross plateform combo : terminal, shell, prompt - for mac and windows.

TOC
- [Intro](#intro)
- [1st try: Hyper - Fish - Tmux](#1st-try-hyper---fish---tmux)
- [2nd try: Wezterm - Nushell - Starship](#2nd-try-wezterm---nushell---starship)
- [More information on my setup](#more-information-on-my-setup)

# Intro

I use MacOS for work, and windows at home, my original setup is mostly the default on each:

- On MacOS: [Iterm2](https://iterm2.com/) with [zsh](https://www.zsh.org/) and [tmux](https://github.com/tmux/tmux/wiki). I also occasionally use [fish](https://fishshell.com/).
- On Windows: [Windows Terminal](https://aka.ms/terminal) with [Nushell](https://www.nushell.sh/), and [wsl Ubuntu](https://ubuntu.com/desktop/wsl).

[VS code](https://code.visualstudio.com/) being my main IDE, and I use [homebrew](https://brew.sh/) on mac and WSL, and [scoop](https://scoop.sh/) on windows as package managers.

As I code more and more at home, and there is more and more cross plateform tools, I started to search for a set of tools I could use on both plateforms.

# 1st try: [Hyper - Fish - Tmux](./1st_try.md)

# 2nd try: [Wezterm - Nushell - Starship](./2nd_try.md)

# Current

- Terminals: [Rio](https://raphamorim.io/rio/), [Ghostty](https://ghostty.org)
- Shells: [Nushell](https://www.nushell.sh/), [Fish](https://fishshell.com/)
- Prompt: [Starship](https://starship.rs/)
- Editors: [Nano](https://www.nano-editor.org/), [Neovim](https://neovim.io/), [Helix](https://helix-editor.com/)
- Helpers: [carapace](https://carapace.sh/), [mcfly](https://github.com/cantino/mcfly), [fzf](https://github.com/junegunn/fzf)

## Quick install

### Macos setup

Install everything

```sh
brew install ghostty nushell fish starship nano neovim helix carapace mcfly fzf
brew install rio --cask
```

### Windows setup

Install everything on Windows

```sh
scoop bucket add extras
scoop install rio nu starship nano neovim helix carapace-bin
```

Install WSL Ubuntu
```sh
wsl.exe --install Ubuntu
```

Install everything on WSL with [homebrew](https://brew.sh/)
```sh
wsl.exe -d Ubuntu -- sudo sh -c "brew install fish tmux helix carapace mcfly fzf"
```

## More information on my setup

- [Fish](./advanced_configs/fish.md)
- [Ghostty](./advanced_configs/ghostty.md)
- [Git](./advanced_configs/git.md)
- [Helix](./advanced_configs/helix.md)
- [Hyperterm](./advanced_configs/hyperterm.md)
- [Murex](./advanced_configs/murex.md)
- [Neovim](./advanced_configs/neovim.md)
- [Nushell](./advanced_configs/nushell.md)
- [Rio](./advanced_configs/rio.md)
- [Starship](./advanced_configs/starship.md)
- [Tmux](./advanced_configs/tmux.md)
- [Wezterm](./advanced_configs/wezterm.md)
- [XONSH](./advanced_configs/xonsh.md)
- [Zed](./advanced_configs/zed.md)
- [Zsh](./advanced_configs/zsh.md)
- [All my custom configs](./assets/)
