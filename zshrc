[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux && exit

fpath=(~/.zsh_plugins/zsh-completions/src $fpath)

autoload -Uz compinit && compinit -C
autoload -Uz colors && colors
autoload -Uz add-zsh-hook
autoload -Uz select-word-style && select-word-style default
autoload -Uz vcs_info

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
REPORTTIME=3

bindkey ";5C" forward-word
bindkey ";5D" backward-word

zstyle ':zle:*' word-chars "*?_.~-=&!#$%^(){}<>./;@ "
zstyle ':zle:*' word-style unspecified
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z} r:|[._-]=*'
zstyle ':completion:*' keep-prefix
zstyle ':completion:*' recent-dirs-insert both
zstyle ':completion:*' completer _expand _complete _list _oldlist _history
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' verbose yes
zstyle ':completion:*' use-cache true
zstyle ':completion:*' list-separator '-->'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

setopt notify
setopt correct
setopt auto_list
setopt auto_menu
setopt share_history
setopt histignorealldups
setopt auto_cd
setopt extended_glob
setopt hist_ignore_all_dups
setopt list_packed
setopt list_types
setopt auto_param_slash
setopt mark_dirs
setopt auto_param_keys
setopt magic_equal_subst
setopt complete_in_word
setopt always_last_prompt
setopt print_eight_bit
setopt no_beep
setopt ignore_eof
setopt auto_pushd
setopt hist_ignore_dups
setopt append_history
setopt inc_append_history
setopt hist_no_store
setopt hist_reduce_blanks
setopt prompt_subst
setopt no_nomatch
setopt transient_rprompt
setopt hist_verify
setopt extended_history
setopt hist_expand
setopt rec_exact
setopt no_flow_control
setopt interactive_comments
setopt globdots

alias mkdir='mkdir -p'
alias d='popd'
alias login='wget -q -O - www.cr.kisarazu.ac.jp/login.gsp --post-data="login=1&user=j16435&pass=NITpasokon96" > /dev/null'
alias bat="upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep 'percentage'|sed -e 's/ //g'|sed -e 's/percentage://'|sed -e 's/%//'"
alias gcc-win="/usr/bin/i686-w64-mingw32-gcc"
alias nano="vim"
alias grep="grep --color -n -I"
alias ls='ls -hqp --color=auto'
alias l='ls -hqp --color=auto'

chpwd() { ls -hqp --color=auto }
function command_not_found_handler(){
	echo "ハァ…？$1とか何言ってんの？"
}
precmd () { vcs_info }

UUU="%B%F{white}（」・ω・）」うー%b"
NYA="%B%F{white}\（・ω・\）にゃー！%b"
SAN="%B%F{red}＼（・ω・＼）SAN値！%b"
PIN="%B%F{red}（／・ω・）／ピンチ！%b"

PROMPT="%K{green}%(?,${UUU},${SAN})%k %F{cyan}%~ %f$ "
RPROMPT="%K{green}%(?,${NYA},${PIN})%k${vcs_info_msg_0_}"

if [ ${UID} -eq 0 ]; then
	PROMPT="%K{green}%B%F{black}ROOT%b%k %F{cyan}%~ %f$ "
	RPROMPT=""
fi

source ~/.zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


if [ ~/.zshrc -nt ~/.zshrc.zwc ]; then
  zcompile ~/.zshrc
fi

echo "\n「私は確かにアニメが好きだし、エロゲーも超好き・・・ううん、愛してると言ってもいい！学校の友達といるのも楽しいよ。でもこっちも同じくらい好き！どっちかを選ぶなんて出来ない！両方好きで好きで堪らないのが私なの！」\n"
