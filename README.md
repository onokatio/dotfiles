# Dotfile

# Deploy


```zsh
$ cd
$ git clone https://github.com/onokatio/.conf-to-git
$ cd .conf-to-git
$ stow -v --no-folding home-stow
```

## maintenance

```
$ cat <(pacman -Qent) <(pacman -Qm) | sort | uniq > ./packagelist.pacman
```

## pipx

```
pipx radicale
pipx inject radicale radicale_storage_decsync
```

## update

```
~/.conf-to-git/cache/tmux-plugins/tpm/bindings/update_plugins
```
