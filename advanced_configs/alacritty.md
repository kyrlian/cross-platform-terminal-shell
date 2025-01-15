# Alacritty terminal

https://alacritty.org/

## Install

### Mac

```sh
brew install --cask alacritty
```
### Windows

```sh
scoop install alacritty
```

## Config location

- Linux and Mac: `~/.config/alacritty/alacritty.toml`
- Windows: `%AppData%\alacritty\alacritty.toml`

## Change default shell

Create and edit the config file and your shell, in a `[shell]` section, here `nu`:

```toml
[shell]
program = "nu"
```

Re-start alacritty to get in the new shell.

## Ressources

- https://dev.to/yjdoc2/completely-oxidizing-my-terminal-setup-43d8
- https://alacritty.org/config-alacritty.html
