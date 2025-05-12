# Custom configurations

- [Fish](./fish/)
- [Ghostty](./ghostty/)
- [Git](./git/)
- [Helix](./helix/)
- [Murex](./murex/)
- [Nushell](./nushell/)
- [OSH](./osh/)
- [RIO](./rio/)
- [Starship](./starship/)
- [TMUX](./tmux/)
- [Wezterm](./wezterm/)
- [XONSH](./xonsh/)
- [YSH](./ysh/)
- [Zed](./zed/)
- [Zsh](./zsh/)

## Links

On mac/linux you can replace the native config files with links to your custom config files, for example if your custom config files are in `~/assets/`: 

```sh
cd ~/assets/

ln -s ${PWD}/fish/local_profile_mac.fish ~/.config/fish/local_profile_mac.fish
ln -s ${PWD}/fish/custom_config.fish ~/.config/fish/custom_config.fish
ln -s ${PWD}/fish/config.fish ~/.config/fish/config.fish

ln -s ${PWD}/ghostty/config ~/.config/ghostty/config
ln -s ${PWD}/helix/config.toml ~/.config/helix/config.toml
ln -s ${PWD}/murex/custom_murex_profile ~/.murex_profile
ln -s ${PWD}/rio/config.toml ~/.config/rio/config.toml
ln -s ${PWD}/starship/starship.toml ~/.config/starship.toml
ln -s ${PWD}/tmux/.tmux.conf ~/.tmux.conf
ln -s ${PWD}/xonsh/xonsh_custom_config.xsh ~/.xonshrc
ln -s ${PWD}/zed/settings.json ~/.config/zed/settings.json
```
