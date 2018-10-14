export ZPFX=$CTG/run/zplugin-polaris
export ZPLGM[HOME_DIR]=$CTG/run/zplugin
export ZSH_PLUGINS_ALIAS_TIPS_TEXT='alias-tips: '

source $CTG/modules/zplugin/zplugin.zsh

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

zplugin ice blockf
zplugin light 'zsh-users/zsh-completions'

compinit

zplugin ice wait'0' atload'_zsh_highlight'
zplugin light zdharma/fast-syntax-highlighting

zplugin ice wait'0' atload'_zsh_autosuggest_start'
zplugin light zsh-users/zsh-autosuggestions

zplugin ice wait'0'
zplugin snippet "$NVM_DIR/nvm.sh"
