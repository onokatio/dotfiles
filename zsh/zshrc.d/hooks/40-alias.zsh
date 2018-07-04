cd `dirname $0`

function ach(){
	if which ${${=2}[1]} > /dev/null 2>&1;then
		echo alias "$1"="'$2' "
	fi
}
function fch(){
	local cmd=$(echo $2|cut -d ' ' -f 1)
	if which $cmd > /dev/null 2>&1;then
		echo "function $1(){ command $2 \$@ }"
	fi
}

#alias sudo='sudo'
ach vi "nvim -u $HOME/.vimrc "
ach vim "nvim -u $HOME/.vimrc "
ach zsh 'exec zsh -l'
alias d 'popd'

fch hs history
fch git hub
fch df dfc
fch top htop
fch diff colordiff
fch info pinfo
fch wget "axel -n 10 -v -a"
fch ks ls
fch xs cd
fch apt apt-fast
fch apt-get apt-fast
fch mkdir 'mkdir -p'
fch bat "upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep 'percentage'|sed -e 's/ //g'|sed -e 's/percentage://'|sed -e 's/%//' "
fch grep "grep --color -n -I "
fch ls 'ls -hqp --color=auto'
fch l 'ls -hqp --color=auto'
fch make 'make -j4'
#fch sudo 'sudo -E'
fch crontab 'echo "dont use crontab !!"'
fch chromekill 'ps ax|/bin/grep [c]hrome|cut -c-6|xargs sudo renice -19'
fch pingg "ping 8.8.8.8 "
fch curlg "curl https://google.com "
fch alpine "docker run -it --rm alpine:edge /bin/sh "
#fch cat 'vimcat'
fch trace-mtr 'mtr'
fch open 'xdg-open'
#fch rm 'rm --one-file-system'
fch rm 'rm -v --one-file-system'
fch poweroff 'echo dontuse'
fch reboot 'echo dontuse'
fch pull 'git pull'
fch push 'git push'
fch status 'git status'
fch add 'git add'
fch commit 'git commit'
