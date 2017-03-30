alias mkdir='mkdir -p '
alias d='popd '
alias login='/usr/bin/wget -O - www.cr.kisarazu.ac.jp/login.gsp --post-data="login=1&user=j16435&pass=NITpasokon96" '
alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep 'percentage'|sed -e 's/ //g'|sed -e 's/percentage://'|sed -e 's/%//' "
alias gcc-win="/usr/bin/i686-w64-mingw32-gcc "
alias nano="vim "
alias grep="grep --color -n -I "
alias ls='ls -hqp --color=auto '
alias l='ls -hqp --color=auto '
alias wget='axel -n 10 -v -a '
alias make='make -j4 '
alias sudo='sudo -E '
alias apt='apt-fast '
alias apt-get='apt-fast '
alias crontab='echo "dont use crontab !!"'
function targz(){tar xvf $@ --use-compress-prog=pigz }
function tarxz(){tar xvf $@ --use-compress-prog=pixz }
function tarbzip2(){tar xvf $@ --use-compress-prog=pbzip2 }
