declare -A ZI
export ZI[HOME_DIR]="$XDG_DATA_HOME/.zi"
#export ZI_REPO="https://github.com/z-shell/zi.git"
export ZI_REPO="https://github.com/zdharma-continuum/zinit.git"
function zi(){ zinit $@ }

if [[ ! -d "${ZI[HOME_DIR]}"/bin ]]; then
	git clone $ZI_REPO --depth 1 "${ZI[HOME_DIR]}"/bin
fi
source "${ZI[HOME_DIR]}"/bin/zinit.zsh

#zi light z-shell/z-a-rust
zi light z-shell/z-a-default-ice
zi default-ice -q depth'1'

zi ice
zi snippet 'OMZL::completion.zsh' #better completion settings

zi ice wait'1'
zi snippet 'OMZP::gnu-utils' #auto prefix 'g' for homebrew gnu-utils

zi wait'0' light-mode blockf as'completion' for \
	pullopts'--recurse-submodule=no' zchee/zsh-completions \
	syohex/zsh-misc-completions \
	vitkabele/complete-mac \
	scriptingosx/mac-zsh-completions \
	nocompile nilsonholger/osx-zsh-completions
#	MenkeTechnologies/zsh-more-completions

zi ice wait nocd atinit='ZSH_BASH_COMPLETIONS_FALLBACK_LAZYLOAD_DISABLE=true;ZSH_BASH_COMPLETIONS_FALLBACK_PATH=/opt/homebrew/share/bash-completion'
zi light 3v1n0/zsh-bash-completions-fallback

# @z-shell : F-Sy-H, H-S-HW, zsh-diff-so-fancy
# @zsh-users+fast : F-Sy-H, zsh-autosuggestions, zsh-completions, z-shell/zsh-fancy-completions
zi light z-shell/z-a-meta-plugins
zi light-mode for \
	skip'zsh-diff-so-fancy' @z-shell \
	@zsh-users+fast

#zi wait'1' light-mode for \
#b4b4r07/enhancd \

#zi ice wait'0'
#zi light sunlei/zsh-ssh

zi ice wait \
	atclone'(( !${+commands[dircolors]} )) && local P=g; \
	${P}sed -i "/DIR/c\\DIR 38;5;63;1" dircolors.ansi-universal; \
    TERM=ansi ${P}dircolors -b dircolors.ansi-universal >! colors.zsh' \
	atpull='%atclone' pick="color.zsh" nocompile="!" reset \
	atload'zstyle ":completion:*:default" list-colors “${(s.:.)LS_COLORS}”;'
zi light 'seebi/dircolors-solarized'

#zi ice wait'0' blockf atload'zsh-startify'
#zi load z-shell/zsh-startify

#zi light RobSis/zsh-completion-generator

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="bold,underline,standout"
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

#zi ice rustup cargo'!exa'
#zi load z-shell/0

# autoupdate
#zi ice wait'0' atload'zi update -p -q >/dev/null' silent
#zi light z-shell/0

#zi ice wait'0' atload'~/.local/share/tmux/plugins/tpm/scripts/update_plugin.sh --shell-echo all'
#zi light z-shell/0

#[[ -r /usr/share/doc/find-the-command/ftc.zsh ]] && source /usr/share/doc/find-the-command/ftc.zsh quiet info
#[[ -r /usr/share/doc/pkgfile/command-not-found.zsh ]] && source /usr/share/doc/pkgfile/command-not-found.zsh

zi ice from'gh-r' as'program' \
	atclone"./starship init zsh --print-full-init > init.zsh; ./starship completions zsh > _starship" \
	atpull"%atclone" src"init.zsh"
zi light starship/starship

zi light asdf-vm/asdf

zi ice from'gh-r' as'program' pick'bws'
zi light bitwarden/sdk
