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
set listchars=tab:>-
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set mouse=a
set lazyredraw
set termguicolors

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

map <ScrollWheelUp> <C-Y>
"nnoremap <S-ScrollWheelUp> <C-Y>
"nnoremap <C-ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
"nnoremap <S-ScrollWheelDown> <C-E>
"nnoremap <C-ScrollWheelDown> <C-E>

let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 1  " Feel free to increase/decrease this value.
nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 3)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -3)<CR>

" sで置換するときにプレビュー表示
set inccommand=split

" ファイルがvueだったときに、ハイライトをファイルの先頭からかけるようにする
autocmd FileType vue syntax sync fromstart

" :terminalからノーマルモードに戻るときESCを使えるようにする
tnoremap <ESC> <C-\><C-n>

let g:python_host_prog = expand('~/script/github.com/onokatio/venvs/neovim-py2/.venv/bin/python')
let g:python3_host_prog = expand('~/script/github.com/onokatio/venvs/neovim/.venv/bin/python')
let g:ruby_host_prog = 'BUNDLE_GEMFILE=~/script/github.com/onokatio/venvs/neovim/Gemfile bundle exec neovim-ruby-host'
let g:node_host_prog = expand('~/script/github.com/onokatio/venvs/neovim/node_modules/.bin/neovim-node-host')

map <Nul> <Nop>
