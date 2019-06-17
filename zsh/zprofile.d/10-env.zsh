#export LANG=ja_JP.UTF-8

#export set CC='ccache gcc'
#export XDG_CONFIG_HOME=$HOME/.config
#export XDG_DATA_HOME=$HOME/.local/share
#export XDG_CACHE_HOME=$HOME/.cache

export NO_AT_BRIDGE=1
export EMOJI_CLI_KEYBIND=^f
export HOMEBREW_CACHE=/tmp
export HOMEBREW_MAKE_JOBS=4
export HOMEBREW_FORCE_BREWED_CURL=1
export HOMEBREW_EDITOR=vi
#export HOMEBREW_CC="ccache gcc"
#export HOMEBREW_CXX="ccache g++"

export HOMEBREW_NO_ENV_FILTERING=1

#export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
export EDITOR=vi
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main pattern cursor root line)
#ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')
ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd
ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export USE_CCACHE=1
export CCACHE_COMPRESS=1
export CCACHE_DIR=$HOME/.ccache
#which ccache >/dev/null 2>&1 && export CC="ccache gcc"
#export TERM="xterm-256color"
export MAKE_OPTS="-j 4"
export PROOT_NO_SECCOMP=1
export XZ_DEFAULTS="--threads 4"

#export POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_uuu dir root_indicator ssh)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs custom_nya)
POWERLEVEL9K_CUSTOM_UUU="echo （」・ω・）」うー"
POWERLEVEL9K_CUSTOM_NYA="echo ＼（・ω・＼）にゃー！"

#export HOMEBREW_CURL=$(which curl)

export GOPATH=$HOME/gopath
export PATH=$GOPATH/bin:$PATH

#export npm_config_prefix=~/.node_modules

#xset -b

export NVM_DIR="$CTG/modules/nvm"

export MOZ_USE_XINPUT2=1

export VGL_READBACK=pbo

#export ZIPINFOOPT="-OCP932"
#export UNZIPOPT="-OCP932"
