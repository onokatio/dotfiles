# Dotfile

## Install


```zsh
$ cd
$ git clone https://github.com/onokatio/.conf-to-git
$ cd .conf-to-git
$ stow -v --no-folding home-stow
$ brew install rcmdnk/file/brew-file
$ brew-file set_repo -r https://github.com/onokatio/Brewfile
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

rclone-mac ncdu --include '*.{mp4,MP4,avi,AVI,wmv,WMV,flv,FLV,mpg,MPG,mov,MOV,mts,MTS}' wasabi-crypt-1:hogehoge
