local -A ZPLGM
ZPLGM[HOME_DIR]=$CTG/run/zplugin

source $CTG/modules/zplugin/zplugin.zsh

autoload -Uz _zplugin

zplugin snippet 'OMZ::lib/clipboard.zsh'
zplugin snippet 'OMZ::lib/completion.zsh'
zplugin snippet 'OMZ::lib/compfix.zsh'

zplugin snippet 'OMZ::plugins/dotenv/dotenv.plugin.zsh'
zplugin snippet 'OMZ::plugins/git/git.plugin.zsh'

zplugin ice pick''
zplugin light 'jsforce/jsforce-zsh-completions'

zplugin ice pick''
zplugin light 'zsh-users/zsh-completions'

autoload -Uz compinit
compinit

zplugin cdreplay -q # -q is for quiet

zplugin ice wait'1' atload'_zsh_highlight'
zplugin light zdharma/fast-syntax-highlighting

zplugin ice wait'1' atload'_zsh_autosuggest_start'
zplugin light zsh-users/zsh-autosuggestions