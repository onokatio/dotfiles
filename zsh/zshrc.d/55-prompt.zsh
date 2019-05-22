#function command_not_found_handler(){
#	if [ -e /usr/bin/jp2a ];then
#		if [ -e ~/kirino.jpg ];then
#			jp2a ~/kirino.jpg -i
#		fi
#	fi
#	echo "ハァ…？$1とか何言ってんの？
#コマンドもろくに覚えられないなんて、アンタどうしようもないクズね。"
#}

chpwd(){ ls -qp --color=auto }


if [ ${UID} -eq 0 ]; then
	PROMPT="%K{green}%B%F{black}ROOT%b%k %F{cyan}%~ %f$ "
else
	setopt prompt_subst
	zstyle ':vcs_info:*' enable git
	zstyle ':vcs_info:git:*' check-for-changes true
	zstyle ':vcs_info:git:*' stagedstr "%K{white}%F{yellow}" # %c
	zstyle ':vcs_info:git:*' unstagedstr "%K{white}%F{red}"  # %u
	zstyle ':vcs_info:*' formats "%F{green}%K{white}%c%u[%b]%f"
	zstyle ':vcs_info:*' actionformats '[%b|%a]'
	#LANG=en_US.UTF-8 vcs_info
	vcs_info
	
	local PNAME
	if [[ -n "${REMOTEHOST}${SSH_CONNECTION}" ]];then
		PNAME="%K{yellow}%F{black}SSH "
	fi
	UUU="%K{white}%F{black}（」・ω・）」うー"
	NYA="＼（・ω・＼）にゃー！"
	#SAN="＼（・ω・＼）SAN値！"
	#PIN="（／・ω・）／ピンチ！"
	PROMPT='${BINDKEY_MODE}${PNAME}%K{blue}%F{black} %~ %F{blue}%K{white}%k%F{blue}${vcs_info_msg_0_}%k%F{white}%f%k '
fi
