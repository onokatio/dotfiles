if has('nvim')

	set runtimepath+=$CTG/cache/dein.vim
	if dein#load_state("$CTG/cache/vim-plugins")
		call dein#begin(expand("$CTG/cache/vim-plugins"))
		call dein#load_toml(expand("$CTG/vim/dein.toml"),{'lazy': 0})
		call dein#load_toml(expand("$CTG/vim/dein_lazy.toml"),{'lazy': 1})
		call dein#end()
		call dein#save_state()
	endif

	syntax enable
	filetype plugin indent on

	if dein#check_install()
	  call dein#install()
	endif


	"colorscheme badwolf
	"colorscheme elflord
	set background=dark
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
