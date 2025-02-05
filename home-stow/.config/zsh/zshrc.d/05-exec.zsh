#zmodload zsh/zprof && zprof

#export RUSTC_WRAPPER="${RUSTC_WRAPPER:-`which sccache`}"
#export CARGO_HOME="$XDG_DATA_HOME"/cargo

export HISTFILE="$XDG_STATE_HOME"/history
export HISTSIZE=1000000
export SAVEHIST=1000000
#REPORTTIME=3
export HISTTIMEFORMAT="[%Y/%M/%D %H:%M:%S] "

if [[ "$TTY" == "/dev/tty1" ]]; then
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
	#sway -d -V --my-next-gpu-wont-be-nvidia 2>&1 | tee ~/sway.log
	#export WLC_BG=0
	#export WLR_NO_HARDWARE_CURSORS=1
	sway --my-next-gpu-wont-be-nvidia >~/sway.log 2>&1
	#| systemd-cat -t 'katio.sway' > /dev/null
	#| systemd-cat -t 'katio.sway'
	export LANG=en_US.UTF-8
	export XDG_CURRENT_DESKTOP=
	export XDG_SESSION_TYPE=tty
	#export XDG_SESSION_TYPE=
fi

if [[ ! -z "$commands[tmux]" ]] && [[ -z "$TMUX" ]] && [[ -z ${REMOTEHOST}${SSH_CONNECTION} ]]; then
	if [[ "$TERM_PROGRAM" == "vscode" ]];then
		session_fullpath=$(git rev-parse --show-toplevel 2>/dev/null | sed -e 's/\//_/g')
		session_main=$(git rev-parse --show-toplevel 2>/dev/null | sed -e 's/.*\///')
		echo tmux new-session -A -s "${session_main}__${session_fullpath}"
		if [[ $? == 0 ]];then
			tmux new-session -A -s "${session_main}__${session_fullpath}"
		else
			tmux new-session -A -s "vscode"
		fi
	elif [[ "$TERM_PROGRAM" == "ghostty" ]];then
		:
	else
		tmux new-session -A -s main
	fi
fi

#umask 0022

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

case ${TERM} in

xterm* | rxvt* | Eterm | aterm | kterm | gnome*)
	PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

	;;
screen*)
	PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
	;;
esac

if [[ ! -z "$command[brew]" ]];then
	HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
fi
if [ -f "$HB_CNF_HANDLER" ]; then
	source "$HB_CNF_HANDLER"
fi
