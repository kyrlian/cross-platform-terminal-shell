# My current setup

- Terminals: [Ghostty](https://ghostty.org) on mac, [Rio](https://raphamorim.io/rio/) on windows (as Ghostty is not available yes)
- Shells: [Fish](https://fishshell.com/) on mac, [Nushell](https://www.nushell.sh/) on windows (as Fish is not available)
- Prompt: [Starship](https://starship.rs/)
- Editors: [Helix](https://helix-editor.com/), [Nano](https://www.nano-editor.org/), [Neovim](https://neovim.io/), 
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