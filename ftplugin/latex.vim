setlocal shiftwidth=2
setlocal tabstop=2
setlocal foldmethod=indent

" LaTeXのquickfixで画面が狭くならないようにする
au FileType qf call AdjustWindowHeight(2, 3)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction
