setopt always_last_prompt
setopt append_history
setopt auto_cd                # ディレクトリ名だけでcdする
setopt auto_list
setopt auto_menu              # 補完キー連打で順に補完候補を自動で補完
setopt auto_name_dirs
setopt auto_param_keys
setopt auto_param_slash       # ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_pushd
setopt auto_resume
setopt complete_in_word       # 語の途中でもカーソル位置で補完
setopt correct
setopt extended_glob
setopt extended_history       # $HISTFILEに時間も記録
setopt glob
setopt globdots
setopt hist_expand
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_all_dups
setopt histignorealldups      # ヒストリーに重複を表示しない
setopt hist_ignore_all_dups   # 同じコマンドをヒストリに残さない
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_save_no_dups      # 重複するコマンドが保存されるとき、古い方を削除する。
setopt hist_verify
setopt ignore_eof
setopt inc_append_history
setopt interactive_comments   # コマンドラインでも # 以降をコメントと見なす
setopt list_packed
setopt list_types
setopt magic_equal_subst      # コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt mark_dirs              # ファイル名の展開でディレクトリにマッチした場合 末尾に / を付加
setopt MULTIOS
setopt no_beep                # ビープ音を消す
setopt no_flow_control
setopt no_nomatch
setopt notify
setopt print_eight_bit        # 日本語ファイル名等8ビットを通す
setopt prompt_subst
setopt rec_exact
setopt share_history          # 他のターミナルとヒストリーを共有
setopt transient_rprompt
unsetopt auto_remove_slash
