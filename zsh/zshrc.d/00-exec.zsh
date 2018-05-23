#zmodload zsh/zprof && zprof

if [[ "$TTY" == "/dev/tty1" ]];then
#	startx
#	fbterm
elif echo "$TTY" | grep "/dev/tty" ;then
#	fbterm
fi

if which tmux >/dev/null 2>&1 && [[ -z "$TMUX" ]] && [[ -z ${REMOTEHOST}${SSH_CONNECTION} ]];then
#	tmux
fi

umask 0022
