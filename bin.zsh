zplugin ice as"program" make"PREFIX=$ZPFX" pick"$ZPFX/bin/git-*"
zplugin light tj/git-extras

zplugin ice as"program" make"PREFIX=$ZPFX" pick"$ZPFX/bin/git-issue"
zplugin light dspinellis/git-issue

zplugin ice as"program" pick"diff-so-fancy"
zplugin snippet "https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy"

zplugin ice wait'0' as'program' pick'bin/anyenv' atload'export ANYENV_ROOT=$PWD ; eval "$(anyenv init -)"'
zplugin light riywo/anyenv

zplugin ice as'program'
zplugin snippet 'https://raw.githubusercontent.com/znz/anyenv-update/master/bin/anyenv-update'

zplugin ice as'program'
zplugin snippet 'https://raw.githubusercontent.com/upa/deadman/master/deadman'

zplugin ice as'program'
zplugin snippet 'https://raw.githubusercontent.com/fumiyas/home-commands/master/echo-sd'

zplugin ice as'program'
zplugin snippet 'https://raw.githubusercontent.com/simonwhitaker/gibo/master/gibo'

zplugin ice as'program'
zplugin snippet 'https://raw.githubusercontent.com/paulirish/git-open/master/git-open'