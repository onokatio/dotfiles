export ZPFX=$CTG/run/zplugin-polaris
export ZSH_PLUGINS_ALIAS_TIPS_TEXT='alias-tips: '

local -A ZPLGM
ZPLGM[HOME_DIR]=$CTG/run/zplugin

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

zplugin ice as'program' mv'yarn-1.10.1.js -> yarn' pick'yarn'
zplugin snippet https://github.com/yarnpkg/yarn/releases/download/v1.10.1/yarn-1.10.1.js

compinit
bashcompinit

#zplugin ice atload'tmp="/usr/share/bash-completion/bash_completion" ; test -r "$tmp" && source $tmp'
#zplugin light chrissicool/zsh-bash

#### async ###
zplugin ice wait'0' atload'_zsh_highlight'
zplugin light zdharma/fast-syntax-highlighting

zplugin ice wait'0' atload'_zsh_autosuggest_start'
zplugin light zsh-users/zsh-autosuggestions

zplugin ice wait'0' as'program' pick'bin/anyenv' atload'export ANYENV_ROOT=$PWD ; eval "$(anyenv init -)"'
zplugin light riywo/anyenv
zplugin ice as'program' pick'anyenv-update'
zplugin snippet 'https://github.com/znz/anyenv-update/blob/master/bin/anyenv-update'
