# Murex config

## Murex on windows with WSL

1. Install WSL 

   (If you haven't already)
   
	```sh
	wsl.exe --install Debian
	```

    or 

	```sh
	wsl.exe --install Ubuntu
	```

2. Download murex for linux
   
    https://murex.rocks/DOWNLOAD.html#linux

    Unzip somewhere, I have it in:

    ```sh
    C:\Program Files\murex\murex-6-linux-amd64
    ```

3. Register murex in /etc/shells 
   
    ```sh
    wsl.exe
    sudo ln -s '/mnt/c/Program Files/murex/murex-6-linux-amd64' /usr/bin/murex
    sudo vi /etc/shells
    ```
    add `/usr/bin/murex` at the end of /etc/shells

4. Launch wsl with murex shell
   
    ```sh
	wsl.exe -- /usr/bin/murex
    ```

5. Optional: Set murex as default shell 
   
    ```sh
    wsl.exe -- chsh -s /usr/bin/murex
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

## Starship module for murex
https://github.com/orefalo/murex-module-starship
https://github.com/lmorg/murex/discussions/699

## Ressources

- [My murex config](../assets/murex/custom_murex_profile)
