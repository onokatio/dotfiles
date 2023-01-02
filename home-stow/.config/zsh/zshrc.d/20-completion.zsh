zstyle ':zle:*' word-chars "*?_.~-=&!#$%^(){}[]<>./;:@,| "
#zstyle ':zle:*' word-chars ' /=;@:{}[]()<>,|.'
zstyle ':zle:*' word-style unspecified
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' keep-prefix
zstyle ':completion:*' recent-dirs-insert both
#zstyle ':completion:*' completer _expand _complete _list _oldlist _history
zstyle ':completion:*' completer _complete
zstyle ':completion:*' cache-path ~/.cache/zsh_cache
zstyle ':completion:*' verbose yes
zstyle ':completion:*' list-separator '-->'
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
zstyle ':completion:*:sudo:*' command-path /usr/bin
zstyle ':completion:*' special-dirs false

#if [ -n "$LS_COLORS" ]; then
#	zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
#fi

### 補完候補
### _oldlist 前回の補完結果を再利用する。
### _complete: 補完する。
### _match: globを展開しないで候補の一覧から補完する。
### _history: ヒストリのコマンドも補完候補とする。
### _ignored: 補完候補にださないと指定したものも補完候補とする。
### _approximate: 似ている補完候補も補完候補とする。
### _prefix: カーソル以降を無視してカーソル位置までで補完する。
