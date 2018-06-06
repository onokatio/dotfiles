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

mes_info '[tmux]' 'init'
	#touch $MYLOCAL_DIST/tmux.conf
	echo -n > $MYLOCAL_DIST/tmux.conf

mes_info '[tmux]' 'Copy tmux'
	cat ./tmux.conf >> $MYLOCAL_DIST/tmux.conf

mes_info  '[tmux]' 'Set tpm lunch'
	if [[ -d ~/.tmux/plugins/tpm ]];then
		echo "run '~/.tmux/plugins/tpm/tpm'" >> $MYLOCAL_DIST/tmux.conf
	else
		echo "run '$PWD/tpm/tpm'" >> $MYLOCAL_DIST/tmux.conf
	fi
