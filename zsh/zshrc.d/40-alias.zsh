alias mkdir='mkdir -p '
alias d='popd '
alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep 'percentage'|sed -e 's/ //g'|sed -e 's/percentage://'|sed -e 's/%//' "
alias gcc-win="/usr/bin/i686-w64-mingw32-gcc "
#alias nano="vim "
#alias grep="grep --color -n -I "
alias ls='ls -hqp --color=auto '
alias l='ls -hqp --color=auto '
alias make='make -j4 '
alias sudo='sudo -E '
alias crontab='echo "dont use crontab !!" '
alias chromekill='ps ax|/bin/grep [c]hrome|cut -c-6|xargs sudo renice -19 '
alias pingg="ping 8.8.8.8 "
alias curlg="curl https://google.com "
alias alpine="docker run -it --rm alpine:edge /bin/sh "
#alias cat='vimcat '
alias trace-mtr='mtr '
alias brew='brew -v '
alias open='xdg-open '
#alias grep='ag '
#alias rm='rm -vrI --one-file-system -- '
#alias s='w3m https://google.com/search?q='
alias poweroff=': '
sdo() sudo zsh -c "$functions[$1]" "$@"
#alias sudo="sdo"

function alias-check(){
	if which ${${=2}[1]} > /dev/null 2>$1;then
		alias "$1"="$2"
	fi
}
function func-check(){
	if which ${${=2}[1]} > /dev/null 2>$1;then
		eval "function $1(){ $2 \$@ }"
	fi
}

alias-check vi "nvim -u ~/.vimrc "
alias-check vim "nvim -u ~/.vimrc "

func-check hs			history
func-check git		hub
func-check df			dfc
func-check top		htop
func-check diff		colordiff
func-check info		pinfo
func-check wget		"axel -n 10 -v -a"
func-check ks			ls
func-check apt			apt-fast
func-check apt-get	apt-fast

function chrome(){
	chrome_b=$(ps ax|env grep '/opt/google/chrome'|head -n1|awk '{print $5}'|cut -d '/' -f 4)
	eval "google-$chrome_b $@"
}
function targz(){tar xvf $@ --use-compress-prog=pigz }
function tarxz(){tar xvf $@ --use-compress-prog=pixz }
function tarbzip2(){tar xvf $@ --use-compress-prog=pbzip2 }
