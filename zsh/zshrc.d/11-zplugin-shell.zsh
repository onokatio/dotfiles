local -A ZPLGM
ZPLGM[HOME_DIR]=$CTG/cache/zplugin-plugin
export ZPFX=$CTG/cache/zplugin-plugin-make
export ZSH_PLUGINS_ALIAS_TIPS_TEXT='alias-tips: '

if [[ ! -d $CTG/cache/zplugin ]];then
	git clone https://github.com/zdharma/zinit.git $CTG/cache/zplugin
fi

source $CTG/cache/zplugin/zplugin.zsh

zplugin snippet 'OMZ::lib/clipboard.zsh'
zplugin snippet 'OMZ::lib/completion.zsh'
zplugin snippet 'OMZ::lib/compfix.zsh'
zplugin snippet 'OMZ::plugins/gnu-utils/gnu-utils.plugin.zsh'

zplugin snippet 'OMZ::plugins/dotenv/dotenv.plugin.zsh'
zplugin snippet 'OMZ::plugins/git/git.plugin.zsh'

zplugin ice blockf
zplugin light 'zsh-users/zsh-completions'

compinit
bashcompinit

#zplugin ice atload'tmp="/usr/share/bash-completion/bash_completion" ; test -r "$tmp" && source $tmp'
#zplugin light chrissicool/zsh-bash

#### async ###
zplugin ice wait'0' atload'_zsh_highlight'
zplugin light zdharma/fast-syntax-highlighting

zplugin ice wait'0' atload'_zsh_autosuggest_start'
zplugin light zsh-users/zsh-autosuggestions

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#586e75,bold,underline"
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main pattern cursor root line)
#ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

#zplugin light b4b4r07/zsh-vimode-visual

zplugin ice wait'0'
zplugin light b4b4r07/emoji-cli

zplugin ice wait'0'
zplugin light b4b4r07/enhancd

#zplugin ice as'program' make"all" pick"bin/history" atload"source misc/zsh/init.zsh"
#zplugin light b4b4r07/history

alias history='command history'
ZSH_HISTORY_KEYBIND_GET="^r"
ZSH_HISTORY_FILTER_OPTIONS="--filter-branch --filter-dir"
ZSH_HISTORY_KEYBIND_ARROW_UP="^p"
ZSH_HISTORY_KEYBIND_ARROW_DOWN="^n"
