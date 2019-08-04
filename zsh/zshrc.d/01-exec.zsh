#zmodload zsh/zprof && zprof

if [[ "$TTY" == "/dev/tty1" ]];then
	startx 2>&1
fi

if [[ -z "$TMUX" ]] && [[ -z ${REMOTEHOST}${SSH_CONNECTION} ]];then
	tmux
fi

#umask 0022
