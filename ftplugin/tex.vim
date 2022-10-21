setlocal shiftwidth=2
setlocal tabstop=2
" setlocal foldmethod=indent
" setlocal foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()

" LaTeXのquickfixで画面が狭くならないようにする
au FileType qf call AdjustWindowHeight(2, 5)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction
