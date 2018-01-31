#!/bin/bash

set -eu

CTG=$HOME/.conf-to-git
MYLOCAL=$CTG/local

touch $HOME/.zprofile.local
source $HOME/.zprofile.local

BREW_VERSION="1.3.6"
#MYLOCAL=$PWD/local
LINUXBREW=$MYLOCAL/Linuxbrew
ANYENV=$MYLOCAL/anyenv

if ! which pkg-config >/dev/null 2>&1;then
	$CTG/provision/Pkgconfig
fi

if ! which curl >/dev/null 2>&1;then
	$CTG/provision/Libressl
	$CTG/provision/Curl
fi

if ! which git >/dev/null 2>&1;then
	$CTG/provision/Git
fi

git submodule init
git submodule update
