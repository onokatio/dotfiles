set autoread
set cursorline
set fenc=utf-8
set hidden
set laststatus=2
set nobackup
set noswapfile
set number
set showcmd
set showmatch
set smartindent
set virtualedit=onemore
set visualbell
set wildmode=list:longest
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
set clipboard=unnamed
set relativenumber
set nocompatible
set backspace=indent,eol,start
set ambiwidth=double
set fileformat=unix
set ttyfast

set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set mouse=a
set lazyredraw

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" sで置換するときにプレビュー表示
set inccommand=split

" ファイルがvueだったときに、ハイライトをファイルの先頭からかけるようにする
autocmd FileType vue syntax sync fromstart

" :terminalからノーマルモードに戻るときESCを使えるようにする
tnoremap <ESC> <C-\><C-n>

