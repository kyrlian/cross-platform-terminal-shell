# Custom configurations

- [Fish](./fish/)
- [Git](./git/)
- [Helix](./helix/)
- [Murex](./murex/)
- [Nushell](./nushell/)
- [Starship](./starship/)
- [Wezterm](./wezterm/)
- [XONSH](./xonsh/)
- [Zsh](./zsh/)

## Links

You can replace the native config files with links to your custom config files, for examples, if your custom config files are in `~/assets/`:

Ex:
```sh
ln -s ~/.config/starship.toml ~/assets/starship/starship.toml
ln -s ~/.murex_profile ~/assets/murex/custom_murex_profile
ln -s .xonshrc ~/assets/xonsh/xonsh_custom_config.py
ln -s ~/.config/helix/config.toml ~/assets/helix/config.toml
ln -s ~/.conifg/fish/config.fish ~/assets/fish/custom_config.fish
```
