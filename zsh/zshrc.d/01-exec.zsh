#zmodload zsh/zprof && zprof

if [[ -z "$CTG" ]];then
	echo 'zsh/zshrc.d/00-exec.zsh: CTG not found. loading zprofile ...'
	source ~/.zprofile
fi

if [[ "$TTY" == "/dev/tty1" ]];then
	startx 2>&1
fi

if [[ -z "$TMUX" ]] && [[ -z ${REMOTEHOST}${SSH_CONNECTION} ]];then
	tmux
fi

#umask 0022
