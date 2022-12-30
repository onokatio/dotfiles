declare -A ZI
export ZI[HOME_DIR]="$XDG_DATA_HOME/.zi"
#export ZI[ZCOMPDUMP_PATH]="$XDG_DATA_HOME/.zi/.zcompdump" #ignore bug?

if [[ ! -d "${ZI[HOME_DIR]}"/bin ]];then
	git clone https://github.com/z-shell/zi.git --depth 1 "${ZI[HOME_DIR]}"/bin
fi
source "${ZI[HOME_DIR]}"/bin/zi.zsh
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi

zi ice wait'1'
zi snippet 'OMZL::completion.zsh' #better completion settings

zi ice wait'1'
zi snippet 'OMZP::gnu-utils' #auto prefix 'g' for homebrew gnu-utils

#autoload -Uz bashcompinit
#bashcompinit

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

zi wait depth'2' lucid light-mode for \
	atinit"ZI[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
		z-shell/F-Sy-H \
	blockf \
		zsh-users/zsh-completions \
	atload"!_zsh_autosuggest_start" \
		zsh-users/zsh-autosuggestions #\
	#sobolevn/wakatime-zsh-plugin
	# disable for security

#zi wait'1' depth'1' light-mode for \
	#b4b4r07/enhancd \
	#z-shell/zui \
	#z-shell/zzcomplete \

zi ice wait'1' depth'1'
zi light z-shell/H-S-MW

zi ice wait'1' atclone='gdircolors ./dircolors.ansi-universal > color.zsh' \
    depth'1' atpull='%atclone' pick="color.zsh" nocompile="!" \
    atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
zi light 'seebi/dircolors-solarized'

#zpm-zsh/ls \


ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="bold,underline,standout"
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
