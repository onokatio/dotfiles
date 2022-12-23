let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 1  " Feel free to increase/decrease this value.

let g:coc_global_extensions = [ 'coc-python', 'coc-json', 'coc-git' ]
"let g:base_dir = fnamemodify(expand('<sfile>'), ':h') .. '/'

if has('nvim')

	let $CACHE = expand('~/.cache')
	if !isdirectory($CACHE)
	  call mkdir($CACHE, 'p')
	endif
	if &runtimepath !~# '/dein.vim'
	  let s:dein_dir = fnamemodify('dein.vim', ':p')
	  if !isdirectory(s:dein_dir)
	    let s:dein_dir = $CACHE . '/dein/repos/github.com/Shougo/dein.vim'
	    if !isdirectory(s:dein_dir)
	      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
	    endif
	  endif
	  execute 'set runtimepath^=' . substitute(
	        \ fnamemodify(s:dein_dir, ':p') , '[/\\]$', '', '')
	endif

	if dein#load_state("$CTG/cache/vim-plugins")
		call dein#begin(expand("$CTG/cache/vim-plugins"))
		call dein#load_toml(expand("$CTG/vim/dein.toml"),{'lazy': 0})
		call dein#load_toml(expand("$CTG/vim/dein_lazy.toml"),{'lazy': 1})
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


	"colorscheme badwolf
	"colorscheme elflord
	set background=dark
	"set background=light
	colorscheme solarized8
	let g:solarized_term_italics = 1
	let g:solarized_extra_hi_groups = 1
	"highlight Normal ctermbg=none

	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Using CocList
	" Show all diagnostics
	nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
	" Manage extensions
	nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
	" Show commands
	nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
	" Find symbol of current document
	nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
	" Search workspace symbols
	nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
	" Do default action for next item.
	nnoremap <silent> <space>j  :<C-u>CocNext<CR>
	" Do default action for previous item.
	nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
	" Resume latest coc list
	nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

	nmap <silent> <TAB> <Plug>(coc-range-select)
	xmap <silent> <TAB> <Plug>(coc-range-select)
	xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

	nnoremap <silent> <space><space> :<C-u>Vista!!<CR>
endif

