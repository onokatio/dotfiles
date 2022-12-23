bindkey -e

#terminfo_down_sc=$terminfo[cud1]$terminfo[cuu1]$terminfo[sc]$terminfo[cud1]
#left_down_prompt_preexec() {
#    print -rn -- $terminfo[el]
#}
#add-zsh-hook preexec left_down_prompt_preexec

#zle -N zle-line-init
#zle -N zle-line-finish
#zle -N zle-keymap-select
#zle -N edit-command-line

bindkey ";5C" forward-word
bindkey ";5D" backward-word
