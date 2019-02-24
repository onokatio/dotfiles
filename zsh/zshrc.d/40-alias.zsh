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
alias ks=ls
alias xs=cd
alias apt=apt-fast
alias apt-get=apt-fast
alias mkdir='mkdir -p'
alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep 'percentage'|sed -e 's/ //g'|sed -e 's/percentage://'|sed -e 's/%//'"
alias grep="grep --color -n -I"
alias ls='ls -hqp --color=auto'
alias l='ls -hqp --color=auto'
#alias make='make -j4'
alias crontab='echo "dont use crontab !!"'
alias chromekill='ps ax|/bin/grep [c]hrome|cut -c-6|xargs sudo renice -19'
alias pingg="ping 8.8.8.8"
alias curlg="curl https://google.com"
alias alpine="docker run -it --rm alpine:edge /bin/sh"
#alias cat='vimcat'
alias trace-mtr='mtr'
alias open='xdg-open'
alias rm='rm -v --one-file-system'
alias poweroff='echo dontuse'
alias reboot='echo dontuse'
#alias sed='gsed'
