# Nushell config

## Install

### Mac

```sh
brew install nu
```
 	
### Windows 

```sh
scoop nu
```

## Config location

Search nu config file with:

```sh
$nu.config-path
```

- Mac: `~/Library/Application Support/nushell`
- Windows: `~\AppData\Roaming\nushell\`


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

## Deactivate default banner

Edit `config.nu`, search for `show_banner`, and set to false:

```sh
show_banner: false
```

## Custom config

Create `custom_config.nu`
```sh
cd ($nu.config-path | path dirname)
vi custom_config.nu
```

Add your alias, for example shortcuts to manage python virtualenv (**Note** pip's embedded `venv` doesn't support nu, first install virtualenv with mac:`brew install virtualenv`, win:`pip install virtualenv`):

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

And load `custom_config.nu` at the end of `config.nu`
```sh
source custom_config.nu
```

## Setup starship as nu prompt

Install [starship](https://starship.rs/)

Go to nu config directory using `$nu.config-path` and create the starship overlay
```sh
cd ($nu.config-path | path dirname)
starship init nu | save -f starship.nu
```
Edit nu config
```sh
config nu
```
Add the starship overlay at the end of the nu config
```sh
use starship.nu
```

## Ressources

- [Nushell](https://www.nushell.sh/)
- [Nushell - configuration](https://github.com/nushell/nushell?tab=readme-ov-file#configuration)
- [Custom banner](https://gist.github.com/jeffock/dce0c67169111ce3e17287ea7c2d0183)
- My custom files: 
  - [custom_config_common.nu](../assets/nushell/custom_config_common.nu)
  - [custom_config_mac.nu](../assets/nushell/custom_config_mac.nu)
  - [custom_config_win.nu](../assets/nushell/custom_config_win.nu)
