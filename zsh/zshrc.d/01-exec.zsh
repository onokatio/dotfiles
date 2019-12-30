#zmodload zsh/zprof && zprof

if [[ "$TTY" == "/dev/tty1" ]];then
	startx 2>&1
fi

if [[ -z "$TMUX" ]] && [[ -z ${REMOTEHOST}${SSH_CONNECTION} ]];then
	tmux new-session -A -s main
fi

#umask 0022

unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
