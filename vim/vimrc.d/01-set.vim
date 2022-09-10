set autoread "ファイル変更時に自動リロード
set cursorline "カーソル行のハイライト
set cursorcolumn "カーソル列のハイライト
set fenc=utf-8 "文字エンコード
set hidden "未保存時に他ファイルを開ける
set laststatus=2 "ステータスラインの常時表示
set nobackup
"set noswapfile
set number "行番号の表示
set showcmd "入力中のキーを表示
set showmatch "対応カッコに一瞬移動
set matchtime=1 "↑0.1秒移動
"set smartindent
set cindent "自動インデント
set virtualedit+=block "文字がないところも矩形選択
set visualbell "ビープを可視化
set wildmode=list:longest "ファイル名補完時にマッチするものを列挙&自動選択
set ignorecase "小文字検索時にケースを無視
set smartcase "大文字検索時にはケース区別
set incsearch "インクリメンタルにハイライト
set wrapscan "末尾まで検索したら先頭に飛ぶ
set hlsearch "検索結果のハイライト
set clipboard=unnamedplus "システムとクリップボード同期
set relativenumber
set nocompatible
set backspace=indent,eol,start "バックスペースで行連結
"set ambiwidth=double "絵文字を2幅化
set fileformat=unix "改行コード
set ttyfast "部分再描画
"set list "不可視文字表示
"set listchars=tab:>\ ,trail:~,extends:< "↑表示方法
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set mouse=a
set lazyredraw
set termguicolors
set scrolloff=2
set formatoptions+=mMj
set showbreak=↪
set inccommand=split
set display=lastline "長行でも表示
set pumheight=15 "ポップアップメニュー行数
set ruler "カーソル行数を表示
set title "ウィンドウタイトルを変更
set modeline
set modelines=10

" sで置換するときにプレビュー表示
set inccommand=split
