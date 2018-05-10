#zmodload zsh/zprof && zprof
if [[ -z "$CTG" ]] ; then
	echo "var CTG or MYLOCAL are not found"
	source ~/.zprofile
fi
MYLOCAL=${MYLOCAL:-$CTG/local}

if [[ "$TTY" == "/dev/tty1" ]];then
	startx
	fbterm
elif echo "$TTY" | grep "/dev/tty" ;then
	fbterm
fi

if which tmux >/dev/null 2>&1 && [[ -z "$TMUX" ]] && [[ -z ${REMOTEHOST}${SSH_CONNECTION} ]];then
	tmux
fi

umask 0077
