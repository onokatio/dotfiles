#function command_not_found_handler(){
#	if [ -e /usr/bin/jp2a ];then
#		if [ -e ~/kirino.jpg ];then
#			jp2a ~/kirino.jpg -i
#		fi
#	fi
#	echo "ハァ…？$1とか何言ってんの？
#コマンドもろくに覚えられないなんて、アンタどうしようもないクズね。"
#}

preexec() {
    _pre="$1"
}

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
