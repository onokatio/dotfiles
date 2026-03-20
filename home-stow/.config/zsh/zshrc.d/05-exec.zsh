#zmodload zsh/zprof && zprof

#export RUSTC_WRAPPER="${RUSTC_WRAPPER:-`which sccache`}"
#export CARGO_HOME="$XDG_DATA_HOME"/cargo

export HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}"/history
export HISTSIZE=1000000
export SAVEHIST=1000000
#REPORTTIME=3
export HISTTIMEFORMAT="[%Y/%M/%D %H:%M:%S] "

if [[ "$TTY" == "/dev/tty1" ]]; then
	#startx -- -logverbose 9 -verbose 9 2>&1 | tee ~/log/startx.log
	#export XDG_SESSION_TYPE=wayland
	#export WINIT_UNIX_BACKEND=wayland
	export LANG=ja_JP.UTF-8
	export XDG_CURRENT_DESKTOP=sway
	export XDG_SESSION_TYPE=wayland
	#export WLR_NO_HARDWARE_CURSORS=1
	sway --my-next-gpu-wont-be-nvidia >~/sway.log 2>&1
	#| systemd-cat -t 'katio.sway' > /dev/null
	#| systemd-cat -t 'katio.sway'
	#export LANG=en_US.UTF-8
	#export XDG_CURRENT_DESKTOP=
	#export XDG_SESSION_TYPE=tty
fi

#unset SSH_AGENT_PID
#if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
#  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
#fi

AGENT_TIMEOUT=3600

if [ -z "$SSH_AUTH_SOCK" ];then
	eval $(ssh-agent -t $AGENT_TIMEOUT)
fi

typeset -U path PATH
export CCACHE_PATH="/usr/bin"

if [[ ! -z "$command[brew]" ]];then
	HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
fi
if [ -f "$HB_CNF_HANDLER" ]; then
	source "$HB_CNF_HANDLER"
fi
