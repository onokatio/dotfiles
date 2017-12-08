#!/bin/bash
CTG=$HOME/.conf-to-git

BREW_VERSION="1.3.6"
#MYLOCAL=$PWD/local
#LINUXBREW=$MYLOCAL/Linuxbrew
PYTHON_VERSION=2.7.14

git submodule init
git submodule update

#if [[ ! -e "$MYLOCAL" ]];then
#	mkdir -p $MYLOCAL
#fi

#if [[ ! -e ./local ]];then
#	ln -s $MYLOCAL ./local
#fi

#if [[ ! -e "$LINUXBREW" ]];then
#	git clone -b $BREW_VERSION --depth 1 https://github.com/Linuxbrew/brew $LINUXBREW
#	#export PATH=$LOCALBREW/bin:$PATH
#	#export LD_LIBRARY_PATH=$LOCALBREW/lib:$PATH
#fi

#PATH=$PWD/anyenv/bin:$PATH
#ANYENV_ROOT=$PWD/anyenv
#eval "$(anyenv init -)"
#anyenv install -s rbenv
#anyenv install -s pyenv
#pyenv install -sv $PYTHON_VERSION
#pyenv global $PYTHON_VERSION
#CONFIGURE_OPTS="--disable-install-rdoc" MAKE_OPTS="-j 4" rbenv install -sv 2.4.2

#brew install git ruby git-lfs
#export PATH=/home/local/python/anaconda3/bin:$PATH
#export HOMEBREW_CURL=/home/local/python/anaconda3/bin/curl

#brew uses --installed curl
#ln -s /home/local/python/anaconda3/bin/curl $MYLOCAL/Linuxbrew/bin/curl
#export HOMEBREW_CURL=$MYLOCAL/Linuxbrew/bin/curl
#brew update
#brew install ansible

cd zsh >/dev/null && ./make && cd ../ >/dev/null

ln -sf $CTG/vim/vimrc ~/.vimrc
ln -sf $CTG/config/tmux.conf ~/.tmux.conf
#ln -sf $CTG/zsh/zshrc ~/.zshrc
echo "export CTG=$HOME/.conf-to-git" > ~/.zshrc
echo "export MYLOCAL=$CTG/local" >> ~/.zshrc
echo "source $CTG/zsh/zshrc" >> ~/.zshrc


#exec zsh -l
echo Run zsh.
