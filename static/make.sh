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

mes_info '[static]' 'copy static file'
	command ls ./* | grep -v "Makefile" | grep -v "make\.sh" | xargs -I {} cp {} $MYLOCAL_DIST/
