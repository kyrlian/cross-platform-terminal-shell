# WSL setup

## Install WSL Ubuntu

```sh
wsl.exe --install Ubuntu
```

## Install apps in wsl (here fish and tmux)

With homebrew:

```sh
wsl.exe -d Ubuntu -- sudo sh -c "brew install fish tmux"
```

Or, if you prefer apt:

```sh
wsl.exe -d Ubuntu -- sudo sh -c "apt-get update && apt-get install fish tmux"
```

## Change default shell in wsl

```sh
wsl.exe -d Ubuntu -- sudo chsh -s /usr/bin/fish
```

## Run  

Execute a command (here `bash`) without using the default Linux shell - useful if you mess with the default shell.

```sh
wsl -d ubuntu -e bash
```

## Ressources
- [How to install Linux on Windows with WSL](https://learn.microsoft.com/en-us/windows/wsl/install)
- [A Guide to Invoking WSL](https://devblogs.microsoft.com/commandline/a-guide-to-invoking-wsl/)