# hyperterm

https://hyper.is/

## Install

### Macos

```sh
brew install hyper
```

### Windows

Donwload and install hyper [hyper](https://hyper.is/)
```sh
scoop install hyper
```

## Config file location

```sh
`~/.hyper.js`
```

## Custom shell

Edit `~/.hyper.js` config file and change `shell`

```sh
        shell: '/opt/homebrew/bin/fish',
        shellArgs: ['--login'],
```

to use with WSL:

```sh
        shell: 'wsl.exe',
        shellArgs: ['-d', 'Debian'],
```

## hyperterm-summon

Add [hyperterm-summon](https://www.npmjs.com/package/hyperterm-summon) to open hyper with hotkey
  
Install hyperterm-summon

```sh
hyper i hyperterm-summon
```

Edit hyper preferences and add:

```js
        summon: {
        hideDock: true,
        hideOnBlur: true,
        hotkey: 'Control+Shift+Space',
        },
```
