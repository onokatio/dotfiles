if has('nvim')

	set runtimepath+=$CTG/vim/dein.vim
	if dein#load_state("$CTG/run/vim-plugins")
		call dein#begin(expand("$CTG/run/vim-plugins"))
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


	let g:deoplete#enable_at_startup = 1
	let g:deplete#auto_complete_delay = 0
	"let g:deoplete#auto_complete_delay = 0

	let g:LanguageClient_serverCommands = {
		\ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
		\ }

	"colorscheme badwolf
	colorscheme elflord
	"set background=dark
	"colorscheme solarized
	highlight Normal ctermbg=none

endif
