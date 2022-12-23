#export LANG=ja_JP.UTF-8
#export TERM="xterm-256color"
#export SUDO_PROMPT="[sudo] password : "
#export LANGUAGE="ja_jp:ja:en_US:en"
#export LD_PRELOAD=/lib/libSegFault.so
export PS4='+(${BASH_SOURCE}:${LINENO}): ${FUNCNAME:+$FUNCNAME(): }'
#export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

#export set CC='ccache gcc'
export NO_AT_BRIDGE=1
export EMOJI_CLI_KEYBIND=^f

##### Homebrew #####
#export HOMEBREW_CACHE=/tmp
export HOMEBREW_MAKE_JOBS=4
export HOMEBREW_FORCE_BREWED_CURL=1
export HOMEBREW_EDITOR=nvim
#export HOMEBREW_CC="ccache gcc"
#export HOMEBREW_CXX="ccache g++"
#export HOMEBREW_NO_ENV_FILTERING=1
#export HOMEBREW_CURL=$(which curl)
export HOMEBREW_INSTALL_FROM_API=1
#export HOMEBREW_BREWFILE_LEAVES=1
export HOMEBREW_AUTOREMOVE=1
export HOMEBREW_BOOTSNAP=1
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_DISPLAY_INSTALL_TIMES=1
export HOMEBREW_BREWFILE_ON_REQUEST=1


##### Shell #####
export EDITOR=nvim
export BROWSER=firefox-developer-edition

export USE_CCACHE=1
export CCACHE_COMPRESS=1
export CCACHE_DIR=$HOME/.ccache
#which ccache >/dev/null 2>&1 && export CC="ccache gcc"
export MAKE_OPTS="-j 4"
export PROOT_NO_SECCOMP=1
export XZ_DEFAULTS="--threads 4"

export GOPATH=$HOME/gopath
export PATH=$GOPATH/bin:$PATH


#export npm_config_prefix=~/.node_modules

#xset -b

#export NVM_DIR="~/modules/nvm"

export VGL_READBACK=pbo

#export ZIPINFOOPT="-OCP932"
#export UNZIPOPT="-OCP932"

export WINEDEBUG=-all,+wgl

export GO111MODULE=on

export PIPENV_VENV_IN_PROJECT=true

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

##### GUI #####

#export GTK2_RC_FILES=/usr/share/themes/Materia-light/gtk-2.0/gtkrc
#export GTK_THEME=Materia-light

# Disable wayland power while we can't manage it.
# with wayland,
# - fcitx & mozc doesn't work,
# - firefox 76 freezes a lot times.
#
export MOZ_ACCELERATED=1
#export MOZ_WEBRENDER=1
export MOZ_USE_XINPUT2=1
export MOZ_X11_EGL=1
export MOZ_ENABLE_WAYLAND=1
#export XDG_SESSION_TYPE=wayland
#export ECORE_EVAS_ENGINE=wayland_egl
#export ELM_ENGINE=wayland_egl
#export SDL_VIDEODRIVER=wayland
#export _JAVA_AWT_WM_NONREPARENTING=1
##export GDK_BACKEND=wayland
#export CLUTTER_BACKEND=wayland
#export QT_QPA_PLATFORMTHEME=qt5ct
#export QT_QPA_PLATFORM=wayland-egl
#export QT_QPA_PLATFORM="xcb" #compatible
#export XINIT_UNIX_BACKEND=wayland
export MOZ_LOG="PlatformDecoderModule:4" # print firefox vaapi debug message.

export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'


#export HTTPS_PROXY=http://127.0.0.1:8731
#export HTTP_PROXY=http://127.0.0.1:8731

### XDG Base Directory ###
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XDG_STATE_HOME=$HOME/.local/state
export XDG_PICTURES_DIR=$HOME/Downloads/Picture
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export SQLITE_HISTORY=$XDG_DATA_HOME/sqlite_history
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME"/aws/credentials
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME"/aws/config
#export CARGO_HOME="$XDG_DATA_HOME"/cargo
#export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
export VAGRANT_HOME="$XDG_DATA_HOME"/vagrant
export VAGRANT_ALIAS_FILE="$XDG_DATA_HOME"/vagrant/aliases
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
#export KUBECONFIG="$XDG_DATA_HOME"/kube/config
export TF_CLI_CONFIG_FILE="$XDG_CONFIG_HOME"/terraformrc
export npm_config_userconfig=$XDG_CONFIG_HOME/npm/config
export npm_config_cache=$XDG_CACHE_HOME/npm
export npm_config_prefix=$XDG_DATA_HOME/npm
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export ENHANCD_DIR="$XDG_DATA_HOME"/enhancd
export GIBO_BOILERPLATES="$XDG_DATA_HOME"/gibo
export SSHHOME="$XDG_CONFIG_HOME"/sshrc
export ADB_VENDOR_KEYS="$XDG_DATA_HOME"/adb/vendor_keys
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
export PYTHONHISTFILE="/dev/null"
alias nvidia-settings='nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings'
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
export ANYENV_ROOT="$XDG_DATA_HOME/anyenv"

eval "$(anyenv init -)"
