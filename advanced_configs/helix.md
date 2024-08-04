# Helix editor

https://helix-editor.com/

## Install 

### Mac

```sh
brew install helix
```

### Windows

```sh
scoop install helix
```

### wsl Ubuntu

```sh
brew install helix
```

Or with apt:
```sh
sudo apt update
sudo add-apt-repository ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix
```

## Config location

- Linux and Mac: `~/.config/helix/config.toml`
- Windows: `%AppData%\helix\config.toml`

You can open the config directly from helix with `:config-open`

## Customize theme

Run helix, and open the config with `:config-open`

Type `:theme ` (note the space after 'theme') to display available themes. Type <Tab> to cycle the themes.

Once you find one you like add theme = "your theme" in the config, and save.

```sh
theme = "catppuccin_mocha"
# theme = "dracula"
```

## Ressources

- [Helix doc - configuration](https://docs.helix-editor.com/configuration.html)
- [Helix doc - keymap](https://docs.helix-editor.com/keymap.html)
- [My Helix config](./assets/helix/config.toml)
