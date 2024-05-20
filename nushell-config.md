# Nushell config

[Nushell](https://www.nushell.sh/)

## Config location

Search nu config file with:

```sh
$nu.config-path
```

- Mac: ``
- Windows: `~\AppData\Roaming\nushell\config.nu`


## Edit config

Edit config with

```sh
config nu
```

or to open with vscode
```sh
vscode $nu.config-path
```

## Setup config editor

Edit `config.nu`, search for `buffer_editor`, and add your editor, for exemple:

```sh
buffer_editor: "helix" 
```

## Aliases

Add your alias at the end of `config.nu`, for example shortcuts to manage python virtualenv (**Note** venv doesn't support nu):

```sh
alias venvc = python -m virtualenv venv
alias activate = overlay use venv\Scripts\activate.nu
```

## Ressources
- [Nushell](https://www.nushell.sh/)
- [Nushell - configuration](https://github.com/nushell/nushell?tab=readme-ov-file#configuration)