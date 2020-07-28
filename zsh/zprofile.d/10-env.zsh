#export LANG=ja_JP.UTF-8

#export set CC='ccache gcc'
#export XDG_CONFIG_HOME=$HOME/.config
#export XDG_DATA_HOME=$HOME/.local/share
#export XDG_CACHE_HOME=$HOME/.cache
export XDG_PICTURES_DIR=$HOME/Downloads/Picture

export NO_AT_BRIDGE=1
export EMOJI_CLI_KEYBIND=^f

##### Homebrew #####
export HOMEBREW_CACHE=/tmp
export HOMEBREW_MAKE_JOBS=4
export HOMEBREW_FORCE_BREWED_CURL=1
export HOMEBREW_EDITOR=nvim
#export HOMEBREW_CC="ccache gcc"
#export HOMEBREW_CXX="ccache g++"
#export HOMEBREW_NO_ENV_FILTERING=1
#export HOMEBREW_CURL=$(which curl)

#export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt


##### Shell #####
export EDITOR=nvim

export USE_CCACHE=1
export CCACHE_COMPRESS=1
export CCACHE_DIR=$HOME/.ccache
#which ccache >/dev/null 2>&1 && export CC="ccache gcc"
#export TERM="xterm-256color"
export MAKE_OPTS="-j 4"
export PROOT_NO_SECCOMP=1
export XZ_DEFAULTS="--threads 4"


export GOPATH=$HOME/gopath
export PATH=$GOPATH/bin:$PATH

#export npm_config_prefix=~/.node_modules

#xset -b

export NVM_DIR="$CTG/modules/nvm"

export VGL_READBACK=pbo

#export ZIPINFOOPT="-OCP932"
#export UNZIPOPT="-OCP932"

export WINEDEBUG=-all,+wgl

export MOZ_ACCELERATED=1
export MOZ_WEBRENDER=1
export MOZ_USE_XINPUT2=1

export GO111MODULE=on

export PIPENV_VENV_IN_PROJECT=true

eval $(dircolors $CTG/static/dircolors.256dark)

#export SUDO_PROMPT="[sudo] password : "

export N0CLI_API_ENDPOINT=172.16.1.11:20180
export N0CLI_API_URL=grpc://172.16.1.11:20180

export QT_QPA_PLATFORMTHEME=qt5ct

##### GUI #####

#export GTK2_RC_FILES=/usr/share/themes/Materia-light/gtk-2.0/gtkrc
#export GTK_THEME=Materia-light

# Disable wayland power while we can't manage it.
# with wayland,
# - fcitx & mozc doesn't work,
# - firefox 76 freezes a lot times.
#
#export MOZ_ENABLE_WAYLAND=1
export XDG_SESSION_TYPE=wayland
export ECORE_EVAS_ENGINE=wayland_egl
export ELM_ENGINE=wayland_egl
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
#export GDK_BACKEND=wayland
export CLUTTER_BACKEND=wayland
export SDL_VIDEODRIVER=wayland

# print firefox vaapi debug message.
export MOZ_LOG="PlatformDecoderModule:5"

export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'

export LANGUAGE="ja_jp:ja:en_US:en"
