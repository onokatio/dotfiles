# Dotfile

## Install


```zsh
$ cd
$ git clone https://github.com/onokatio/.conf-to-git
$ cd .conf-to-git
$ stow -v --no-folding home-stow
```

## optional

```
pipx radicale
pipx inject radicale radicale_storage_decsync
```

## maintenance

```
$ ~/.conf-to-git/cache/tmux-plugins/tpm/bindings/update_plugins
$ cat <(pacman -Qent) <(pacman -Qm) | sort | uniq > ./packagelist.pacman
```
