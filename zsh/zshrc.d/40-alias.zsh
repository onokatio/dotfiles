function targz() {tar xvf $@ --use-compress-prog=pigz }
function tarxz() {tar xvf $@ --use-compress-prog=pixz }
function tarbzip2() {tar xvf $@ --use-compress-prog=pbzip2 }

if [[ "$(uname -s)" == "Darwin" ]]; then
	alias rm='rm -v'
	alias ls='ls -AhqpFvb --color=auto'
	alias ll='ls -l'
elif [[ "$(uname -s)" == "Linux" ]]; then
	alias rm='rm -v --one-file-system'
	alias ls='ls -AhqpFvb --group-directories-first --human-readable --almost-all --color=auto'
	alias ll='ls -lZ --full-time --inode'
	alias diff='diff --color=auto'
	alias open='xdg-open'
	alias cp='cp --reflink=auto'
else
	echo "unknown OS"
fi

#alias sudo='doas'
alias sudo='sudo '
#alias vi="nvim -u $HOME/.vimrc"
#alias vim="nvim -u $HOME/.vimrc"
#alias vi="code"
#alias vim="code"
alias d='popd'

alias hs=history
#alias git=hub
#alias df=dfc
#alias top=htop
#alias diff=colordiff
#alias wget="axel -n 10 -v -a"
alias mirror='wget -r -l inf -k -nc -H'
alias xs=cd
#alias apt=apt-fast
alias apt-get=apt-fast
alias mkdir='mkdir -p'
#alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep 'percentage'|sed -e 's/ //g'|sed -e 's/percentage://'|sed -e 's/%//'"
alias grep="grep --color=auto -I"
alias ks=ls
#alias make='make -j4'
alias crontab='echo "dont use crontab !!"'
alias chromekill='ps ax|/bin/grep [c]hrome|cut -c-6|xargs sudo renice -19'
alias pingg="ping 8.8.8.8"
alias curlg="curl https://google.com"
#alias cat='vimcat'
#alias cat='cat -v'
alias trace-mtr='mtr'
alias poweroff='echo do not use'
alias reboot='echo do not use'
#alias sed='gsed'

alias alpine="docker run -it --rm alpine:edge /bin/sh"
alias ubuntu="docker run -it --rm ubuntu /bin/bash"
alias archlinux="docker run -it --rm archlinux /bin/bash"
alias centos="docker run -it --rm centos /bin/bash"
alias debian="docker run -it --rm debian /bin/bash"
alias fedora="docker run -it --rm fedora /bin/bash"
alias kali="docker run -it --rm kalilinux/kali-rolling /bin/bash"

alias aria2c="aria2c --bt-max-peers=0 --bt-request-peer-speed-limit=1000M --max-concurrent-downloads=100 --max-connection-per-server=16 --split=20 --bt-max-open-files=1000"

alias CAPS='echo setxkbmap -option ctrl:swapcaps , setxkbmap -option'

#alias wine='LANG="ja_JP.UTF-8" ; wine'
alias oculus='scrcpy -p 5555 -c 1441:1200:0:200'

function rot() {
	for i in {a..z}; do
		j=$(echo $i | tr '[a-z]' '[A-Z]')
		echo "$@" | tr "[a-z]" "[$i-za-$i]" | tr "[A-Z]" "[$j-ZA-$j]"
	done
}

alias sqli="echo \' OR 1 == 1 \; -- \' "

alias get='ghq get'

alias myip='curl http://inet-ip.info'
alias myip6='curl -Ss https://ip6.bramp.net/ | head -n1 | cut -c5- '

alias venv='python3 -m venv venv'

alias man='LANG=ja_JP.UTF-8 man'
alias info='LANG=ja_JP.UTF-8 pinfo'

# list files in archive
alias lszip='unzip -l ' # lszip <archive>
alias lstar='tar tf '   # lstar <archive>

# cat file in archive
alias tarcat='tar --to-stdout -xf' # tarcat <archive> <internal path>
alias zipcat='unzip -p'            # zipcat <archive> <internal path>

alias quest='scrcpy --always-on-top -b 16M --fullscreen --no-control --crop 1440:1600:0:0'

#alias ssh='sshrc'

alias hex='hexyl'

alias tldr='tldr -L en'

alias gcc='gcc -Wall'

function license-gpl() {
	echo "Copyright (C) $(date +%Y) onokatio(おのかちお)"
	echo ""
	license-gpl-en
	echo ""
	license-gpl-ja
}

function license-gpl-en() {
	cat <<EOL
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

function license-gpl-ja() {
	cat <<EOL
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

function license-mit() {
	cat <<EOL
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

export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
#export LESSOPEN='|/usr/bin/lesspipe.sh %s'
export LESS='-i -M -R'
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

function mode_simple() {
	PROMPT='> '
}

function systemd-template() {
	cat <<EOL
[Unit]
Description=

[Service]
Type=simple
ExecStart=

[Install]
WantedBy=multi-user.target

EOL
}

function txt2img() {
	silicon -b "#fff" --shadow-blur-radius 50 --theme "Solarized (dark)" -o ~/Downloads/$(basename $1).png $1
}

alias addt='transmission-remote -a'
alias addm='\ls *.torrent | while read line;do addt "$line";done'

alias textlint='textlint --experimental --parallel --config ~/.config/textlintrc'
alias secretlint-globalconfig='secretlint --secretlintrc ~/.config/secretlintrc.json "**/*"'

alias hdmi-light-0='ddccontrol -r 0x10 -w 0 dev:/dev/i2c-4 -f'
alias hdmi-light-100='ddccontrol -r 0x10 -w 100 dev:/dev/i2c-4 -f'

alias mytracker-generate='comm -13 <(sort /tmp/trackers_cache.txt | sed -e "s;/announce;;") <(for i in {1..98};do transmission-remote -t $i -it | grep "Tracker \d"| sed -e "s/  Tracker .*: \(.*:\/\/\)/\1/" ;done | sort tracker | uniq) | sort >> ~/Downloads/mytracker.txt'

function rclone-tr() {
	rclone move --delete-empty-src-dirs -P "$1" wasabi-crypt:mp4/tr/new/"$1"
}

alias rclone='rclone --transfers 64'

alias pacman-autoremove='pacman -Rns $(pacman -Qtdq)'

alias cols='tput cols'
alias lines='tput lines'

alias ttyUSB0='cu -l /dev/ttyUSB0 -s 9600'

#alias ffmpeg="ffmpeg -vaapi_device /dev/dri/renderD128 -hwaccel vaapi -hwaccel_output_format vaapi -vf 'format=nv12|vaapi,hwupload' -movflags +faststart"
alias ffmpeg-vaapi="ffmpeg -vaapi_device /dev/dri/renderD128 -hwaccel vaapi -hwaccel_output_format vaapi"

alias ffmpeg='ffmpeg -hide_banner'

function unuri() {
	printf '%b\n' "${1//\%/\\x}"
}
