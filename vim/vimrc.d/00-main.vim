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
set tabstop=4
set shiftwidth=4

nnoremap <ESC><ESC> :noh<CR>

"noremap PP "0p
"noremap x "_x
"
"let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0
"set guicursor=


" http://blog.remora.cx/2012/09/use-tabpage.html
"nnoremap <S-Tab> gt
"nnoremap <Tab><Tab> gT
"for i in range(1, 9)
"    execute 'nnoremap <Tab>' . i . ' ' . i . 'gt'
"endfor
"""

if has('nvim')
	set inccommand=split
endif

autocmd FileType vue syntax sync fromstart
