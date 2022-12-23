nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <silent> jj <ESC>

map <ScrollWheelUp> <C-Y>
"nnoremap <S-ScrollWheelUp> <C-Y>
"nnoremap <C-ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
"nnoremap <S-ScrollWheelDown> <C-E>
"nnoremap <C-ScrollWheelDown> <C-E>

"nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
"nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
"nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 3)<CR>
"nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -3)<CR>

" :terminalからノーマルモードに戻るときESCを使えるようにする
tnoremap <ESC> <C-\><C-n>

map <Nul> <Nop>

nnoremap + <C-a> "+でインクリメント
nnoremap - <C-x> "-でデクリメント

nnoremap Y y$ "Yで行末までコピー
