# 2n try: Wezterm - Nushell - Starship

For my second try I tried [Alacrity](https://alacritty.org/)
but settled on [Wezterm](https://wezfurlong.org/wezterm/index.html) for the ability to split windows
(as I can't use [tmux](https://github.com/tmux/tmux/wiki) nor [zellij](https://zellij.dev/) on windows),
[nushell](https://www.nushell.sh/) because it seems different enough to warrant learning a new shell and exists both on mac and windows,
[Fish](https://fishshell.com/), [Murex](https://murex.rocks/), [Xonsh](https://xon.sh/) as secondary shells via [wsl Ubuntu](https://ubuntu.com/desktop/wsl),
[Starship](https://starship.rs/) to customize my prompt, and included a few editors.

- Terminals: [Wezterm](https://wezfurlong.org/wezterm/index.html), [Rio](https://raphamorim.io/rio/), [Ghostty](https://ghostty.org)
- Shells: [Nushell](https://www.nushell.sh/), [Fish](https://fishshell.com/), [Murex](https://murex.rocks/), [Xonsh](https://xon.sh/)
- Prompt: [Starship](https://starship.rs/)
- Editors: [Nano](https://www.nano-editor.org/), [Neovim](https://neovim.io/), [Helix](https://helix-editor.com/)
- Helpers: [carapace](https://carapace.sh/), [mcfly](https://github.com/cantino/mcfly), [fzf](https://github.com/junegunn/fzf)

## Quick install

### Macos setup

Install everything

```sh
brew install wezterm nushell fish xonsh murex starship nano neovim helix mcfly fzf
```

### Windows setup

Install everything on Windows

```sh
scoop bucket add extras
scoop install rio wezterm nu starship nano neovim helix carapace-bin
```

Install WSL Ubuntu
```sh
wsl.exe --install Ubuntu
```

Install everything on WSL with [homebrew](https://brew.sh/)
```sh
wsl.exe -d Ubuntu -- sudo sh -c "brew install fish xonsh tmux helix mcfly fzf"
```

Or, with apt-get
```sh
wsl.exe -d Ubuntu -- sudo sh -c "sudo apt update"
wsl.exe -d Ubuntu -- sudo sh -c "sudo add-apt-repository ppa:maveonair/helix-editor"
wsl.exe -d Ubuntu -- sudo sh -c "apt-get update && apt-get install fish xonsh tmux helix mcfly fzf"
```
