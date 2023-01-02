setopt always_last_prompt
setopt auto_cd # Use cd by typing directory name if it's not a command.
setopt auto_list # Automatically list choices on ambiguous completion.
setopt auto_menu              # 補完キー連打で順に補完候補を自動で補完
setopt auto_name_dirs
setopt auto_param_keys
setopt auto_param_slash       # ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_pushd # Make cd push the old directory onto the directory stack.
setopt auto_resume
setopt complete_in_word       # 語の途中でもカーソル位置で補完
setopt correct
setopt extended_glob
setopt glob
setopt globdots
setopt ignore_eof
setopt interactive_comments # Comments even in interactive shells.
setopt list_packed
setopt list_types
setopt magic_equal_subst      # コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt mark_dirs              # ファイル名の展開でディレクトリにマッチした場合 末尾に / を付加
setopt multios # Implicit tees or cats when multiple redirections are attempted.
setopt no_beep # Don't beep on error.
setopt no_flow_control
setopt no_nomatch
setopt notify
setopt print_eight_bit        # 日本語ファイル名等8ビットを通す
setopt prompt_subst # Substitution of parameters inside the prompt each time the prompt is drawn.
setopt rec_exact
setopt transient_rprompt
setopt pushd_ignore_dups # Don't push multiple copies directory onto the directory stack.
setopt pushd_minus          # Swap the meaning of cd +1 and cd -1 to the opposite.
unsetopt auto_remove_slash

#history
setopt append_history # Allow multiple sessions to append to one Zsh command history.
setopt extended_history # Show timestamp in history.
setopt hist_expand
setopt hist_expire_dups_first # Expire A duplicate event first when trimming history.
setopt hist_ignore_all_dups # Remove older duplicate entries from history.
setopt hist_ignore_dups # Do not record an event that was just recorded again.
setopt hist_ignore_space # Do not record an Event Starting With A Space.
setopt hist_no_store
setopt hist_reduce_blanks # Remove superfluous blanks from history items.
setopt hist_save_no_dups # Do not write a duplicate event to the history file.
setopt hist_verify # Do not execute immediately upon history expansion.
setopt share_history # Share history between different instances of the shell.
setopt inc_append_history # Write to the history file immediately, not when the shell exits.