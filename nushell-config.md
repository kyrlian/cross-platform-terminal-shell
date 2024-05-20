# Nushell config

[Nushell](https://www.nushell.sh/)

## Setup config editor

If the editor is not setup, search nu config file with

```sh
$nu.config-path
```

Edit `config.nu`, search for `buffer_editor`, and add your editor, for exemple:

```sh
buffer_editor: "helix" 
```

## Aliases

Edit config with

```sh
config nu
```

Add your alias at the end of `config.nu`, for example shortcuts to manage python virtualenv (**Note** venv doesn't support nu):

```sh
alias venvc = python -m virtualenv venv
alias activate = overlay use venv\Scripts\activate.nu
```
