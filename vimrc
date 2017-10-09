set autoread
"set cursorline
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
noremap PP "0p
noremap x "_x

" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
    set nocompatible               " Be iMproved
     endif

 " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/

 " Required:
  call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
  " Required:
   NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
  " Refer to |:NeoBundle-examples|.
   " Note: You don't set neobundle setting in .gvimrc!
		NeoBundle 'altercation/vim-colors-solarized'
		NeoBundle 'Shougo/neocomplete.vim'
		NeoBundle 'nathanaelkane/vim-indent-guides'
		NeoBundle 'bronson/vim-trailing-whitespace'

 call neobundle#end()

 " Required:
  filetype plugin indent on

 " If there are uninstalled bundles found on startup,
  " this will conveniently prompt you to install them.
   NeoBundleCheck

syntax enable
set background=dark
" colorscheme solarized
autocmd VimEnter,ColorScheme * highlight Normal ctermbg=none

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
        \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'scheme' : $HOME.'/.gosh_completions'
                    \ }
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
      endfunction
      inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
      inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
      inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
  endif
  let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
  let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
  let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
if has("autocmd")
	autocmd BufReadPost *
	\	if line("'\"") > 0 && line ("'\"") <= line("$") |
	\		exe "normal! g'\"" |
	\ endif
endif

set noexpandtab
