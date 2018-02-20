chpwd(){ ls -qp --color=auto }
#function command_not_found_handler(){
#	if [ -e /usr/bin/jp2a ];then
#		if [ -e ~/kirino.jpg ];then
#			jp2a ~/kirino.jpg -i
#		fi
#	fi
#	echo "ハァ…？$1とか何言ってんの？
#コマンドもろくに覚えられないなんて、アンタどうしようもないクズね。"
#}

#if [ ${UID} -eq 0 ]; then
	#PROMPT="%K{green}%B%F{black}ROOT%b%k %F{cyan}%~ %f$ "
#else
#	UUU="%B%F{white}（」・ω・）」うー▶%b"
#	NYA="%B%F{white}\（・ω・\）にゃー！%b"
#	SAN="%B%F{red}＼（・ω・＼）SAN値！%b"
#	PIN="%B%F{red}（／・ω・）／ピンチ！%b"
	#PROMPT="$PROMPT%K{green}%(?,${UUU},${SAN})%k%F{cyan}%~ %f$ ❯ "
	#RPROMPT="$RPROMPT%K{green}%(?,${NYA},${PIN})%k${vcs_info_msg_0_}"
#fi
