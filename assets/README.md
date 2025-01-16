# Custom configurations

- [Fish](./fish/)
- [Ghostty](./ghostty/)
- [Git](./git/)
- [Helix](./helix/)
- [Murex](./murex/)
- [Nushell](./nushell/)
- [RIO](./rio/)
- [Starship](./starship/)
- [Wezterm](./wezterm/)
- [XONSH](./xonsh/)
- [Zed](./zed/)
- [Zsh](./zsh/)

## Links

On mac/linux you can replace the native config files with links to your custom config files, for examples, if your custom config files are in `~/assets/`:

Ex:
```sh
ln -s ~/assets/fish/custom_config.fish ~/.config/fish/config.fish
ln -s ~/assets/ghostty/config ~/.config/ghostty/config
ln -s ~/assets/helix/config.toml ~/.config/helix/config.toml
ln -s ~/assets/murex/custom_murex_profile ~/.murex_profile
ln -s ~/assets/rio/config.toml ~/.config/rio/config.toml
ln -s ~/assets/starship/starship.toml ~/.config/starship.toml
ln -s ~/assets/xonsh/xonsh_custom_config.xsh ~/.xonshrc
ln -s ~/assets/zed/settings.json ~/.config/zed/settings.json
```
