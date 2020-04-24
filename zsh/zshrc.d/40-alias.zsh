function targz(){tar xvf $@ --use-compress-prog=pigz }
function tarxz(){tar xvf $@ --use-compress-prog=pixz }
function tarbzip2(){tar xvf $@ --use-compress-prog=pbzip2 }

alias sudo='sudo '
#alias sudo='sudo'
alias vi="nvim -u $HOME/.vimrc"
alias vim="nvim -u $HOME/.vimrc"
alias d='popd'

alias hs=history
#alias git=hub
#alias df=dfc
#alias top=htop
#alias diff=colordiff
alias info=pinfo
#alias wget="axel -n 10 -v -a"
alias mirror='wget -r -l inf -k -nc -H'
alias ks=ls
alias xs=cd
alias apt=apt-fast
alias apt-get=apt-fast
alias mkdir='mkdir -p'
#alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep 'percentage'|sed -e 's/ //g'|sed -e 's/percentage://'|sed -e 's/%//'"
alias grep="grep --color -I"
alias ls='ls -qpFv --group-directories-first --human-readable --almost-all --color=auto'
alias l='ls -qpFv --group-directories-first --human-readable --almost-all --color=auto'
alias ll='ls -lZ -AhqpFv --group-directories-first --human-readable --almost-all --color=auto --full-time --inode'
alias la='ls -lZ -AhqpFv --group-directories-first --human-readable --almost-all --color=auto --full-time --inode'
#alias make='make -j4'
alias crontab='echo "dont use crontab !!"'
alias chromekill='ps ax|/bin/grep [c]hrome|cut -c-6|xargs sudo renice -19'
alias pingg="ping 8.8.8.8"
alias curlg="curl https://google.com"
#alias cat='vimcat'
alias cat='cat -v'
alias trace-mtr='mtr'
alias open='xdg-open'
alias rm='rm -v --one-file-system'
#alias rm='echo Use gomi command instead of '
alias poweroff='echo do not use'
alias reboot='echo do not use'
#alias sed='gsed'

alias alpine="docker run -it --rm alpine:edge /bin/sh"
alias ubuntu="docker run -it --rm ubuntu /bin/bash"
alias centos="docker run -it --rm centos /bin/bash"
alias debian="docker run -it --rm debian /bin/bash"
alias fedora="docker run -it --rm fedora /bin/bash"

alias aria2c="aria2c --bt-max-peers=0 --bt-request-peer-speed-limit=1000M --max-concurrent-downloads=100 --max-connection-per-server=16 --split=20 --bt-max-open-files=1000"

alias CAPS='echo setxkbmap -option ctrl:swapcaps , setxkbmap -option'

#alias wine='LANG="ja_JP.UTF-8" ; wine'
alias oculus='scrcpy -p 5555 -c 1441:1200:0:200'

function rot(){
	for i in {a..z} ;do j=$(echo $i | tr '[a-z]' '[A-Z]'); echo "$@" | tr "[a-z]" "[$i-za-$i]" | tr "[A-Z]" "[$j-ZA-$j]";done
}
alias sqli="echo \' OR 1 == 1 \; -- \' "

alias get='ghq get'

alias myip='curl http://inet-ip.info'

alias venv='python3 -m venv venv'

alias man='LANG=ja_JP.UTF-8 man'
