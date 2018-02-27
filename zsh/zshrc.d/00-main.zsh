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

if which tmux >/dev/null 2>&1 && [[ -z "$TMUX" ]];then
	tmux
fi

source /home/katio/.conf-to-git/zsh/zplug/init.zsh
zplug zsh-users/zsh-autosuggestions
zplug zsh-users/zsh-completions, lazy:true
zplug load
