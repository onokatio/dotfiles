#zi ice as'program' make"all" pick"bin/history" atload"source misc/zsh/init.zsh"
#zi light b4b4r07/history
alias history='command history'
ZSH_HISTORY_KEYBIND_GET="^r"
ZSH_HISTORY_FILTER_OPTIONS="--filter-branch --filter-dir"
ZSH_HISTORY_KEYBIND_ARROW_UP="^p"
ZSH_HISTORY_KEYBIND_ARROW_DOWN="^n"

#zi ice wait'0' as'program' pick'bin/anyenv' atload'export ANYENV_ROOT=$PWD ; eval "$(anyenv init -)"'
#zi light riywo/anyenv
#eval "$(anyenv init -)"

zi wait lucid as='program' for \
    'https://raw.githubusercontent.com/znz/anyenv-update/master/bin/anyenv-update' \
    'https://raw.githubusercontent.com/upa/deadman/master/deadman' \
    'https://raw.githubusercontent.com/fumiyas/home-commands/master/echo-sd' \
    'https://gitlab.com/wavexx/screenkey/raw/master/screenkey'

zi light 'asdf-vm/asdf'

zi ice wait lucid atclone='gdircolors ./dircolors.ansi-universal > color.zsh' \
    atpull='%atclone' pick="color.zsh" nocompile="!" \
    atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
zi light 'seebi/dircolors-solarized'
