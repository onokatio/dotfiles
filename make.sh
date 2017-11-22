#!/usr/bin/env bash

BREW_VERSION="1.3.6"
MYLOCAL=$PWD/local
LOCALBREW=/tmp/.systemd-cache/Linuxbrew

if [[ -e local ]]
then
	mkdir -p local
fi

if [[ -e $MYLOCAL ]]
then
	git clone -b $BREW_VERSION https://github.com/Linuxbrew/brew $LOCALBREW
	export PATH=$LOCALBREW/bin:$PATH
	export LD_LIBRARY_PATH=$LOCALBREW/lib:$PATH
fi

#brew install git ruby git-lfs

cd zsh && make
