# Alacritty terminal

https://alacritty.org/

## Change default shell

Create and edit `$HOME/.config/alacritty/alacritty.toml` 

```sh
mkdir -p $HOME/.config/alacritty
cd alacritty
nano alacritty.toml
```

add you shell, here `nu`:

```toml
[shell]
program = "nu"
```

And re-start alacritty to get in the new shell.

## Ressources

- https://dev.to/yjdoc2/completely-oxidizing-my-terminal-setup-43d8
- https://alacritty.org/config-alacritty.html

