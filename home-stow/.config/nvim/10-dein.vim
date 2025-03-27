let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 1  " Feel free to increase/decrease this value.

let g:coc_global_extensions = [ 'coc-python', 'coc-json', 'coc-git' ]
"let g:base_dir = fnamemodify(expand('<sfile>'), ':h') .. '/'

if has('nvim')

	let s:dein_base = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache/vim/dein') : $XDG_CACHE_HOME.'/vim/dein'
	if !isdirectory(s:dein_base)
	  call mkdir(s:dein_base, 'p')
	endif
	if &runtimepath !~# '/dein.vim'
	  let s:dein_dir = fnamemodify('dein.vim', ':p')
	  if !isdirectory(s:dein_dir)
	    let s:dein_dir = s:dein_base . '/repos/github.com/Shougo/dein.vim'
	    if !isdirectory(s:dein_dir)
	      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
	    endif
	  endif
	  execute 'set runtimepath^=' . substitute(
	        \ fnamemodify(s:dein_dir, ':p') , '[/\\]$', '', '')
	endif

	if dein#load_state(s:dein_base)
		call dein#begin(s:dein_base)
		call dein#load_toml(expand('<sfile>:h').'/dein.toml',{'lazy': 0})
		call dein#load_toml(expand('<sfile>:h').'/dein_lazy.toml',{'lazy': 1})
		call dein#end()
		call dein#save_state()
	endif

	if has('filetype')
	  filetype indent plugin on
	endif

	" Enable syntax highlighting
	if has('syntax')
	  syntax on
	endif

	if dein#check_install()
	  call dein#install()
	endif


	"set background=dark
	"set background=light
	colorscheme solarized8
	let g:solarized_term_italics = 1
	let g:solarized_extra_hi_groups = 1
	"highlight Normal ctermbg=none

	nmap <silent> <TAB> <Plug>(coc-range-select)
	xmap <silent> <TAB> <Plug>(coc-range-select)
	xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)
endif

