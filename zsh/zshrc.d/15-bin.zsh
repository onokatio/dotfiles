#zi ice as'program' make"all" pick"bin/history" atload"source misc/zsh/init.zsh"
#zi light b4b4r07/history
alias history='command history'
ZSH_HISTORY_KEYBIND_GET="^r"
ZSH_HISTORY_FILTER_OPTIONS="--filter-branch --filter-dir"
ZSH_HISTORY_KEYBIND_ARROW_UP="^p"
ZSH_HISTORY_KEYBIND_ARROW_DOWN="^n"

export ANYENV_ROOT="$XDG_DATA_HOME/anyenv"
eval "$(anyenv init -)"

#zi wait lucid as='program' for \
#    'https://raw.githubusercontent.com/znz/anyenv-update/master/bin/anyenv-update' \

zi light 'asdf-vm/asdf'

zi ice wait lucid atclone='gdircolors ./dircolors.ansi-universal > color.zsh' \
    atpull='%atclone' pick="color.zsh" nocompile="!" \
    atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
zi light 'seebi/dircolors-solarized'
