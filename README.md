# Dotfile

## Requirement

- zsh
- tmux
- git

# Deploy


```zsh
$ cd
$ git clone https://github.com/onokatio/.conf-to-git
```

If you instal another path, add the path to $CTG enviroment variable.
For example:

```zsh
$ git clone https://github.com/onokatio/.conf-to-git ~/dotfile
$ export CTG=$HOME/dotfile # or write this export command to zprofile directory.
```

The default $CTG is `$HOME/.conf-to-git`

```
# for linux
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# for macOS
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

$ brew bundle
```

# Use zshrc/zprofile

```
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
