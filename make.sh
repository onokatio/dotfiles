#!/usr/bin/env bash

BREW_VERSION="1.3.6"
MYLOCAL=$PWD/local
LOCALBREW=$MYLOCAL/Linuxbrew.local

if [[ -e local ]]
then
	mkdir -p local
fi

if [[ -e $MYLOCAL ]]
then
	git clone -b $BREW_VERSION https://github.com/Linuxbrew/brew $LOCALBREW
	PATH=$LOCALBREW/bin:$PATH
fi

#if ! which 
#then
#	brew install ansible
#fi

cd zsh && make
