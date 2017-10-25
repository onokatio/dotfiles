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
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
set clipboard=unnamed
set relativenumber
set noexpandtab
set nocompatible
set backspace=indent,eol,start
noremap PP "0p
noremap x "_x

call plug#begin('~/.conf-to-git/zshrc.d/plugins/junegunn/vim-plug/plug.vim')
call plug#end()
