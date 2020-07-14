function targz(){tar xvf $@ --use-compress-prog=pigz }
function tarxz(){tar xvf $@ --use-compress-prog=pixz }
function tarbzip2(){tar xvf $@ --use-compress-prog=pbzip2 }

#alias sudo='doas'
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
alias ls='ls -Z -AhqpFvb --group-directories-first --human-readable --almost-all --color=auto'
alias l='ls'
alias la='ls -l'
alias ll='ls -l'
#alias l='ls -qpFvb --group-directories-first --human-readable --almost-all --color=auto'
#alias ll='ls -lZ -AhqpFvb --group-directories-first --human-readable --almost-all --color=auto --full-time --inode'
#alias la='ls -lZ -AhqpFvb --group-directories-first --human-readable --almost-all --color=auto --full-time --inode'
#alias make='make -j4'
alias crontab='echo "dont use crontab !!"'
alias chromekill='ps ax|/bin/grep [c]hrome|cut -c-6|xargs sudo renice -19'
alias pingg="ping 8.8.8.8"
alias curlg="curl https://google.com"
#alias cat='vimcat'
#alias cat='cat -v'
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
alias kali="docker run -it --rm kalilinux/kali-rolling /bin/bash"

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

# list files in archive
alias lszip='unzip -l ' # lszip <archive>
alias lstar='tar tf '   # lstar <archive>

# cat file in archive
alias tarcat='tar --to-stdout -xf' # tarcat <archive> <internal path>
alias zipcat='unzip -p'            # zipcat <archive> <internal path>

alias quest='scrcpy --always-on-top -b 16M --fullscreen --no-control --crop 1440:1600:0:0'

alias ssh='sshrc'

alias hex='hexyl'

alias tldr='tldr -L en'

alias gcc='gcc -Wall'

function license-gpl(){
	echo "Copyright (C) $(date +%Y) onokatio(おのかちお)"
	echo ""
	license-gpl-en
	echo ""
	license-gpl-ja
}

function license-gpl-en(){
cat << EOL
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
EOL
}

function license-gpl-ja(){
cat << EOL
このプログラムはフリーソフトウェアです。あなたはこれを、フリーソフトウェ
ア財団によって発行された GNU 一般公衆利用許諾契約書(バージョン3か、希
望によってはそれ以降のバージョンのうちどれか)の定める条件の下で再頒布
または改変することができます。

このプログラムは有用であることを願って頒布されますが、*全くの無保証* 
です。商業可能性の保証や特定の目的への適合性は、言外に示されたものも含
め全く存在しません。詳しくはGNU 一般公衆利用許諾契約書をご覧ください。
 
あなたはこのプログラムと共に、GNU 一般公衆利用許諾契約書の複製物を一部
受け取ったはずです。もし受け取っていなければ、<http://www.gnu.org/licenses/>
を確認してください。
EOL
}

function license-mit(){
cat << EOL
	MIT License

Copyright (c) 2020 onokatio(おのかちお)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOL
}
