# hyperterm config

## Add [hyperterm-summon](https://www.npmjs.com/package/hyperterm-summon) to open hyper with hotkey
  
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
