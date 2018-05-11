#!/usr/bin/env bash

set -e  # stop when fail
set -u  # fail when var is not defined


cd `dirname $0`

export MYLOCAL_DIST="$PWD/../dists"

function mes_info(){
	tput setaf 11
	echo -n $1
	tput setaf 10
	echo " $2..."
	tput sgr0
}
function mes_done(){
	tput setaf 10
	echo 'done'
	tput sgr0
}

mes_info '[zshrc]' 'init'
	touch $MYLOCAL_DIST/zshrc
	echo > $MYLOCAL_DIST/zshrc
	rm -f ~/.zcompdump  # Clear zcomp cache

mes_info '[zshrc]' 'Bundle zshrc.d'
	command ls ./zshrc.d/*.zsh       | sort | xargs cat >> $MYLOCAL_DIST/zshrc

mes_info '[zshrc]' 'Bundle hooks'
	if which zsh >/dev/null;then
		find ./zshrc.d/hooks -maxdepth 1 -name *.zsh | sort | xargs zsh >> $MYLOCAL_DIST/zshrc
	else
		echo "zsh not found"
	fi

mes_info '[zshrc]' 'Test & Compile'
	zsh -n $MYLOCAL_DIST/zshrc
	zsh -c "zcompile $MYLOCAL_DIST/zshrc"

mes_info '[zshrc]' 'Running zcomp...'
  zsh -c "autoload -Uz compinit && compinit"


mes_info '[zprofile]' 'init'
	touch $MYLOCAL_DIST/zprofile
	echo -n > $MYLOCAL_DIST/zprofile

mes_info '[zprofile]' 'Bundle zprofile.d'
	find ./zprofile.d -maxdepth 1 -name '*.zsh' | sort | xargs cat >> $MYLOCAL_DIST/zprofile

mes_info '[zprofile]' 'Bundle hooks'
	if which zsh >/dev/null;then
		find ./zprofile.d/hooks -maxdepth 1 -name *.zsh | sort | xargs zsh >> $MYLOCAL_DIST/zprofile
	else
		echo "zsh not found"
	fi

mes_info '[zprofile]' 'Test & Compile'
	zsh -n $MYLOCAL_DIST/zprofile
	zsh -c "zcompile $MYLOCAL_DIST/zprofile"