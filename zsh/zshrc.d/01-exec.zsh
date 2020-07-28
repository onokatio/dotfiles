#zmodload zsh/zprof && zprof

if [[ "$TTY" == "/dev/tty1" ]];then
	#startx -- -logverbose 9 -verbose 9 2>&1 | tee ~/log/startx.log
	#export XDG_SESSION_TYPE=wayland
	#export WINIT_UNIX_BACKEND=wayland
	#WLR_DRM_DEVICES=/dev/dri/by-path/pci-0000:00:02.0-card
	#WLR_DRM_DEVICES=/dev/dri/by-path/pci-0000:01:00.0-card
	export LANG=ja_JP.UTF-8
	export XDG_CURRENT_DESKTOP=sway
	export XDG_SESSION_TYPE=wayland
	#WLR_DRM_DEVICES=/dev/dri/card0:/dev/dri/card1 sway -d -V --my-next-gpu-wont-be-nvidia 2>&1 > ~/sway.log
	#WLR_DRM_DEVICES=/dev/dri/card0 sway -d -V --my-next-gpu-wont-be-nvidia 2>&1 | tee ~/sway.log
	rm -f ~/sway.log
	sway -d -V --my-next-gpu-wont-be-nvidia 2>&1 | tee ~/sway.log
	#| systemd-cat -t 'katio.sway'
	export LANG=en_US.UTF-8
	export XDG_CURRENT_DESKTOP=
	export XDG_SESSION_TYPE=tty
	#export XDG_SESSION_TYPE=
fi

if [[ -z "$TMUX" ]] && [[ -z ${REMOTEHOST}${SSH_CONNECTION} ]];then
	tmux new-session -A -s main
fi

#umask 0022

#unset SSH_AGENT_PID
#if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
#  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
#fi

AGENT_TIMEOUT=3600

#if [ -z "$SSH_AUTH_SOCK" ];then
	eval $(ssh-agent -t $AGENT_TIMEOUT) > /dev/null
#fi

typeset -U path PATH
export CCACHE_PATH="/usr/bin"
