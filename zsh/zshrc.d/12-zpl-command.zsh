zplugin ice as"program" make"PREFIX=$ZPFX" pick"$ZPFX/bin/git-*"
zplugin light tj/git-extras

zplugin ice as"program" make"PREFIX=$ZPFX" pick"$ZPFX/bin/git-issue"
zplugin light dspinellis/git-issue

zplugin ice as"program" pick"diff-so-fancy"
zplugin snippet https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy

zplugin ice as'program' mv'yarn-1.10.1.js -> yarn' pick'yarn'
zplugin snippet https://github.com/yarnpkg/yarn/releases/download/v1.10.1/yarn-1.10.1.js

zplugin ice as'program' mv'nvim.appimage -> nvim' pick'nvim'
zplugin snippet 'https://github.com/neovim/neovim/releases/download/v0.3.1/nvim.appimage'

zplugin ice as'program' atclone"mkdir -p ~/.themes && ./install.sh --dest ~/.themes --color light -s standard && rm -rf .git src"
zplugin light nana-4/materia-theme

zplugin ice as'program' atclone"mkdir -p ~/.icons && cat ./install.sh | DESTDIR=\"$HOME/.icons\" THEMES=Papirus sh"
zplugin snippet 'https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install.sh'
