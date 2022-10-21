setlocal shiftwidth=2
setlocal tabstop=2
" setlocal foldmethod=indent
" setlocal foldmethod=indent
" let g:vimtex_fold_enabled = 1

setlocal foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
" set foldexpr=vimtex#fold#level(v:lnum)
" set foldtext=vimtex#fold#text()

" LaTeXのquickfixで画面が狭くならないようにする
au FileType qf call AdjustWindowHeight(2, 5)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction
