# Murex shell

https://murex.rocks/

## Install 

### Mac

```sh
brew install murex
```

### Windows with WSL

1. Install WSL - if you haven't already

	```sh
	wsl.exe --install Ubuntu
	```

2. Install with homebrew
 
    ```sh
    brew install murex
    ```

3. or install manually 
   
    Donwload from https://murex.rocks/DOWNLOAD.html#linux
 
    Register in wsl /etc/shells 

    ```sh
    sudo ln -s '/mnt/c/Program Files/murex/murex-6-linux-amd64' /usr/bin/murex
    sudo vi /etc/shells
    ```
    add `/usr/bin/murex` at the end of /etc/shells

4. Launch wsl with murex shell
   
    ```sh
	wsl.exe -- murex
    ```


## Custom murex profile

Set your aliases in 

```sh
~/.murex_profile
```

You can also source a custom file, for example :

```sh
source $HOME/.../murex/custom_murex_profile
```

See [my murex config](../assets/murex/custom_murex_profile)

## Starship module for murex

[Install starship](./starship.md#install)

Install [murex module for starship](https://github.com/orefalo/murex-module-starship)

```sh
murex-package install https://github.com/orefalo/murex-module-starship.git
murex-package update
```

or [my fork](https://github.com/kyrlian/murex-module-starship), modified to keep the starship hint above the prompt, and not be overwritten by Murex hint


```sh
murex-package install https://github.com/kyrlian/murex-module-starship.git
murex-package update
```

**Note**: Murex doesn't support right prompt.

## Ressources

- [Murex](https://murex.rocks)
- [Murex Module Starship](https://github.com/orefalo/murex-module-starship)
- [My murex config](../assets/murex/custom_murex_profile)
- [My fork of Murex Module Starship](https://github.com/kyrlian/murex-module-starship) - to keep the starship hint above the prompt, and not be overwritten by Murex hint
