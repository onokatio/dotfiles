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
preexec() {
  _pre="$1"
}
precmd(){
	_r=$?
	case "${_pre}"  in
		cd*|git*|vi*|:)
			#psvar=()
			#LANG=en_US.UTF-8 vcs_info
			vcs_info
			#[[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
		;;
	esac
	_pre=""

	return ${_r}
}

if [ ${UID} -eq 0 ]; then
	PROMPT="%K{green}%B%F{black}ROOT%b%k %F{cyan}%~ %f$ "
else
	setopt prompt_subst
	zstyle ':vcs_info:*' enable git
	zstyle ':vcs_info:git:*' check-for-changes true
	zstyle ':vcs_info:git:*' stagedstr "%K{white}%F{yellow}" # %c
	zstyle ':vcs_info:git:*' unstagedstr "%K{white}%F{red}"  # %u
	zstyle ':vcs_info:*' formats "%K{black}%F{white}%F{green}%K{white}%c%u[%b]%f"
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
	#"%K{white}%F{black}%(?,${UUU},${SAN}) %K{blue}%F{white} %F{black}%~ %k%F{blue}%f "
	PROMPT="${PNAME}${UUU} %K{blue}%F{white} %F{black}%~ %k%F{blue}%f "
	#RPROMPT="%K{green}%(?,${NYA},${PIN})%k${vcs_info_msg_0_}"
	RPROMPT='%f%b%k${vcs_info_msg_0_}%F{black}%K{white}%F{white}%K{black} ${NYA} %f'
fi

do_enter() {
    if [[ -n $BUFFER ]]; then
        zle accept-line
        return $status
    fi

    echo
    if [[ ! -z "${vcs_info_msg_0_}" ]]; then
        if [[ -n "$(git status --short)" ]]; then
            git status
        fi
    else
        # do nothing
        :
    fi

    zle reset-prompt
}
zle -N do_enter
bindkey '^m' do_enter
bindkey "\C-m" do_enter
