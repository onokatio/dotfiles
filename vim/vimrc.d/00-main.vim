
" ファイルがvueだったときに、ハイライトをファイルの先頭からかけるようにする
autocmd FileType vue syntax sync fromstart

"let g:python_host_prog = expand('~/script/github.com/onokatio/emilia/neovim-py2/.venv/bin/python')
"let g:python3_host_prog = expand('~/script/github.com/onokatio/emilia/neovim/.venv/bin/python')
"let g:ruby_host_prog = 'BUNDLE_GEMFILE=~/script/github.com/onokatio/emilia/neovim/Gemfile bundle exec neovim-ruby-host'
"let g:node_host_prog = expand('~/script/github.com/onokatio/emilia/neovim/node_modules/.bin/neovim-node-host')

function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    " 全角スペースのハイライト指定
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    autocmd VimEnter,WinEnter * match ZenkakuSpace '\%u3000'
  augroup END
  call ZenkakuSpace()
endif

augroup swapchoice-readonly "swap発見時に自動readonly
  autocmd!
  autocmd SwapExists * let v:swapchoice = 'o'
augroup END

if !has('nvim') | set viminfofile=$XDG_CACHE_HOME/vim/viminfo | endif