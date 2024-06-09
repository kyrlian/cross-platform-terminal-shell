# WSL setup

## Install WSL Ubuntu

```sh
wsl.exe --install Ubuntu
```

## Install apps in wsl (here fish and tmux)

```sh
wsl.exe -d Ubuntu -- sudo sh -c "apt-get update && apt-get install fish tmux"
```

## Change default shell in wsl

```sh
wsl.exe -d Ubuntu -- sudo chsh -s /usr/bin/fish
```
