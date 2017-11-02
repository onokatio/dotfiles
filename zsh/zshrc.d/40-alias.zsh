alias mkdir='mkdir -p '
alias d='popd '
alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep 'percentage'|sed -e 's/ //g'|sed -e 's/percentage://'|sed -e 's/%//' "
alias gcc-win="/usr/bin/i686-w64-mingw32-gcc "
alias nano="vim "
#alias grep="grep --color -n -I "
alias ls='ls -hqp --color=auto '
alias l='ls -hqp --color=auto '
alias wget='axel -n 10 -v -a '
alias make='make -j4 '
alias sudo='sudo -E '
alias apt='apt-fast '
alias apt-get='apt-fast '
alias crontab='echo "dont use crontab !!" '
alias chromef='ps ax|/bin/grep [c]hrome|cut -c-6|xargs sudo renice -19 '
alias pingg="ping 8.8.8.8 "
alias curlg="curl https://google.com "
alias alpine="docker run -it --rm alpine:edge /bin/sh "
alias df='dfc '
alias top='htop '
alias diff='colordiff '
alias info='pinfo '
#alias cat='vimcat '
alias trace-mtr='mtr '
#alias grep='ag '
alias rm="gomi --"
#alias rm='rm -vrI --one-file-system -- '
alias s='w3m https://google.com/search?q='
alias poweroff=': '
alias vi='nvim -u ~/.vimrc '
alias vim='nvim -u ~/.vimrc '

function git(){hub "$@"}
function chrome(){
	chrome_b=$(ps ax|env grep '/opt/google/chrome'|head -n1|awk '{print $5}'|cut -d '/' -f 4)
	eval "google-$chrome_b $@"
}
function targz(){tar xvf $@ --use-compress-prog=pigz }
function tarxz(){tar xvf $@ --use-compress-prog=pixz }
function tarbzip2(){tar xvf $@ --use-compress-prog=pbzip2 }
