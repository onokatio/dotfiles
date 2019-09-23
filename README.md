# Dotfile

## Requirement

- zsh
- tmux
- git

# Setup

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

# Use zshrc/zprofile

```
$ ln -s path/to/.conf-to-git/zsh/zshrc ~/.zshrc
$ ln -s path/to/.conf-to-git/zsh/zprofile ~/.zprofile
```

or

```
$ echo "source path/to/.conf-to-git/zsh/zshrc" >> ~/.zshrc
$ echo "source path/to/.conf-to-git/zsh/zprofile" >> ~/.zprofile
```

# Use vimrc

```
$ ln -s path/to/.conf-to-git/vim/vimrc ~/.vimrc
```

or 

```
$ echo "source path/to/.conf-to-git/vim/vimrc" >> ~/.vimrc
```

# Use another dotfile

run this:

```
$ stow -v home-stow
```

# Use/Install command

First, install zshrc of this repository.
Seconds, run `source bin.zsh`


## maintenance

```
$ cat <(pacman -Qent) <(pacman -Qm) | sort | uniq > ./packagelist.pacman
```
