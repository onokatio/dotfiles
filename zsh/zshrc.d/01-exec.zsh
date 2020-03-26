#zmodload zsh/zprof && zprof

if [[ "$TTY" == "/dev/tty1" ]];then
	#startx -- -logverbose 9 -verbose 9 2>&1 | tee ~/log/startx.log
	#WLR_DRM_DEVICES=/dev/dri/by-path/pci-0000:00:02.0-card
	sway -d -V --my-next-gpu-wont-be-nvidia 2>&1 | tee ~/log/sway.log
fi

if [[ -z "$TMUX" ]] && [[ -z ${REMOTEHOST}${SSH_CONNECTION} ]];then
	tmux new-session -A -s main
fi

#umask 0022

#unset SSH_AGENT_PID
#if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
#  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
#fi
