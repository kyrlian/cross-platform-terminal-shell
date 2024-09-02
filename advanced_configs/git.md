# git

To load a custom git config when in a particular directory, edit your .gitconfig file (usually located either in ~ or in ~/.config/git)

Add the following: (here if in the Dev/k directory, I load the k.gitconfig file, that will override settings in the main .gitconfig file)

```sh
[includeif "gitdir:~/Documents/Dev/k/"]
	path = ~/Documents/Dev/k/k.gitconfig
```
