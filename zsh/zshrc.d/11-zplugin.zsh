local -A ZPLGM
ZPLGM[HOME_DIR]=$CTG/run/zplugin

source $CTG/modules/zplugin/zplugin.zsh
export ZPFX=$CTG/run/zplugin-polaris

autoload -Uz _zplugin

zplugin ice as"program" make"PREFIX=$ZPFX" pick"$ZPFX/bin/git-*"
zplugin light tj/git-extras

zplugin ice as"program" make"PREFIX=$ZPFX" pick"$ZPFX/bin/git-issue"
zplugin light dspinellis/git-issue

zplugin ice as"program" pick"diff-so-fancy"
zplugin snippet https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy

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
