# Xonsh config

## Install

### Macos 

```sh
brew install xonsh
```
	
### Windows with WSL (Ubuntu)

1. Install WSL Ubuntu if needed
	```sh
	wsl.exe --install Ubuntu
	```
2. Install xonsh in wsl Ubuntu
	```sh
	wsl.exe -d Ubuntu -- sudo sh -c "apt-get update && apt-get install xonsh"
	```
3. Optional: Set xonsh as default shell in wsl Ubuntu
	```sh
	wsl.exe -d Ubuntu -- sudo chsh -s /usr/bin/xonsh
	```
4. Launching wsl will now launch a terminal with xonsh shell
    ```sh
	wsl.exe -d Debian
    ```

## Config file location

```sh
~/.xonshrc
```

## Python virtual envs
xonsh doenst play well with venv or virtual env, and has a dedicated xontrib to manage python virtual environments called [vox](https://xon.sh/python_virtual_environments.html).

Here are aliases to use my usual 'venvc' and 'activate' shortcuts:

```python
aliases['venvc'] = 'vox new @($(basename $(pwd)).strip()+"_virtualenv")'
aliases['activate'] = 'vox activate @($(basename $(pwd)).strip()+"_virtualenv")'
aliases['deactivate'] = 'vox deactivate'
```

## Ressources

- [Xonsh shell](https://xon.sh/)
- [My xonsh config](../assets/xonsh/xonsh_custom_config.py)