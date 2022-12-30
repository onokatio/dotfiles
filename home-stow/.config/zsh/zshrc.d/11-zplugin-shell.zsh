declare -A ZI
export ZI[HOME_DIR]="$XDG_DATA_HOME/.zi"
#export ZI[ZCOMPDUMP_PATH]="$XDG_DATA_HOME/.zi/.zcompdump" #ignore bug?

if [[ ! -d "${ZI[HOME_DIR]}"/bin ]];then
	git clone https://github.com/z-shell/zi.git --depth 1 "${ZI[HOME_DIR]}"/bin
fi
source "${ZI[HOME_DIR]}"/bin/zi.zsh
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi


zi light z-shell/z-a-default-ice
zi default-ice -q depth'1'

zi ice wait'1'
zi snippet 'OMZL::completion.zsh' #better completion settings

zi ice wait'1'
zi snippet 'OMZP::gnu-utils' #auto prefix 'g' for homebrew gnu-utils

#autoload -Uz bashcompinit
#bashcompinit

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

## load completions
zi wait'0a' light-mode blockf as'completion' for \
	zchee/zsh-completions

# @z-shell : F-Sy-H, H-S-HW, zsh-diff-so-fancy
# @zsh-users+fast : F-Sy-H, zsh-autosuggestions, zsh-completions, z-shell/zsh-fancy-completions
zi light z-shell/z-a-meta-plugins
zi light-mode for \
	skip'zsh-diff-so-fancy' @z-shell \
	@zsh-users+fast

#zi wait'1' light-mode for \
	#b4b4r07/enhancd \

zi ice wait'0a' atclone='gdircolors ./dircolors.ansi-universal > color.zsh' \
    atpull='%atclone' pick="color.zsh" nocompile="!" \
    atload'zstyle ":completion:*:default" list-colors “${(s.:.)LS_COLORS}”;'
zi light 'seebi/dircolors-solarized'

#zpm-zsh/ls \

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="bold,underline,standout"
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# autoupdate
#zi ice wait'0' atload'zi update -p -q >/dev/null' silent
#zi light z-shell/0

#zi ice wait'0' atload'~/.local/share/tmux/plugins/tpm/scripts/update_plugin.sh --shell-echo all'
#zi light z-shell/0