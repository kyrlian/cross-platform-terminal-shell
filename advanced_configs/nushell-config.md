# Nushell config

## Config location

Search nu config file with:

```sh
$nu.config-path
```

- Mac: `~/Library/Application Support/nushell`
- Windows: `~\AppData\Roaming\nushell\config.nu`


## Edit config

Edit config with

```sh
config nu
```

or to open with vscode
```sh
code $nu.config-path
```

## Setup editor

Edit `config.nu`, search for `buffer_editor`, and add your editor, for exemple:

```sh
buffer_editor: "helix" 
```

## Aliases

Add your alias in `custom_alias.nu`, for example shortcuts to manage python virtualenv (**Note** venv doesn't support nu):

Macos:
```sh
alias venvc = virtualenv virtualenv
alias activate = overlay use ./virtualenv/bin/activate.nu
```

Windows:
```sh
alias venvc = python -m virtualenv virtualenv
alias activate = overlay use virtualenv\Scripts\activate.nu
```

And load `custom_alias.nu` at the end of `config.nu`
```sh
source custom_alias.nu
```

## Ressources

- [Nushell](https://www.nushell.sh/)
- [Nushell - configuration](https://github.com/nushell/nushell?tab=readme-ov-file#configuration)
- [Custom banner](https://gist.github.com/jeffock/dce0c67169111ce3e17287ea7c2d0183)
- My custom files: 
  - [custom_alias.nu](../assets/nushell/custom_alias.nu)
  - [custom_banner.nu](../assets/nushell/custom_banner.nu)
