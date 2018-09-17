set runtimepath+=$HOME/.conf-to-git/vim/dein.vim
if dein#load_state("$HOME/.vim-plugins")
	call dein#begin(expand("$HOME/.vim-plugins"))
	call dein#load_toml(expand("$HOME/.conf-to-git/vim/dein.toml"),{'lazy': 0})
	call dein#load_toml(expand("$HOME/.conf-to-git/vim/dein_lazy.toml"),{'lazy': 1})
	call dein#end()
	call dein#save_state()
endif

syntax enable
filetype plugin indent on

if dein#check_install()
  call dein#install()
endif

"colorscheme badwolf
colorscheme elflord
"set background=dark
"colorscheme solarized
highlight Normal ctermbg=none
