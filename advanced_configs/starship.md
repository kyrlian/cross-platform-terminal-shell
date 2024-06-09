# Starship prompt

https://starship.rs/

## Install

### Mac OS

```sh
brew install starship
```
### Windows

```sh
scoop install starship
```

### Unix / WSL

```sh
curl -sS https://starship.rs/install.sh | sh
```

## Create configuration file

Create `~/.config/starship.toml`

```sh
mkdir ~/.config 
touch ~/.config/starship.toml
```

## Customize prompt

Edit `~/.config/starship.toml`

```sh
helix ~/.config/starship.toml
```

See [Starship config doc](https://starship.rs/config/), or [my custom config](../assets/starship/starship.toml).

## For Murex shell

See [Starship module for murex](./murex.md#starship-module-for-murex)

## Ressources

- [Starship](https://starship.rs/)
- [Starship doc - config](https://starship.rs/config/)
- [Starship on windows](https://dev.to/ganmahmud/take-your-windows-powershell-to-the-next-level-by-starship-2gb2)
- [Murex Module Starship](https://github.com/orefalo/murex-module-starship)
- [My starship config](../assets/starship/starship.toml)
