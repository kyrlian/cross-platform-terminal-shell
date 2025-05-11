# 1st try: Hyper - Fish - Tmux

My first try to get a cross plateform combo terminal + shell + multiplexer for mac and windows WSL was:

- Terminal: [hyper](https://hyper.is/)
- Shell: [fish](https://fishshell.com/)
- Multiplexer: [tmux](https://github.com/tmux/tmux/wiki)

## Quick install

### Macos setup

1. Install fish and tmux
    ```sh
    brew install hyper fish tmux
    ```
2. Setup fish shell in hyper : Edit `~/.hyper.js` config file and change `shell`
    ```sh
        shell: '/opt/homebrew/bin/fish',
        shellArgs: ['--login'],
    ```

### Windows setup

1. Install WSL
    ```sh
    wsl.exe --install Ubuntu
    ```
2. Install fish and tmux in wsl
    ```sh
    wsl.exe -d Ubuntu -- sudo sh -c "brew install fish tmux"
    ```
    Or, if you prefer apt:
    ```sh
    wsl.exe -d Debian -- sudo sh -c "apt-get update && apt-get install fish tmux"
    ```
3. Set fish as default shell in wsl
    ```sh
    wsl.exe -d Ubuntu -- sudo chsh -s /usr/bin/fish
    ```
4. Donwload and install hyper [hyper](https://hyper.is/)
    ```sh
    scoop install hyper
    ```
5. Launch hyper, and setup WSL as shell in hyper : edit hyper preferences and set:
    ```
        shell: 'wsl.exe',
        shellArgs: ['-d', 'Ubuntu'],
    ```

## More information on my setup

- [Hyperterm](./advanced_configs/hyperterm.md)
- [Fish](./advanced_configs/fish.md)
- [Tmux](./advanced_configs/tmux.md)

## Verdict and lessons learned

- Hyper is a bit too slow to start for me as I tend to open/close my terminal a lot
- Fish is fun, but not POSIX so my old aliases and muscle memory is lost
- I keep alternating with hyper/fish and iterm2/zsh on mac, and getting back to win terminal/shell on windows
