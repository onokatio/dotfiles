#zmodload zsh/zprof && zprof

if [[ -z "$CTG" ]];then
	source ~/.zprofile
fi

if [[ "$TTY" == "/dev/tty1" ]];then
	startx > /dev/null 2>&1
#	fbterm
elif echo "$TTY" | grep "/dev/tty" ;then
#	fbterm
fi

if [[ -z "$TMUX" ]] && [[ -z ${REMOTEHOST}${SSH_CONNECTION} ]];then
	tmux
fi

#umask 0022
