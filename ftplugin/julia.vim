setlocal tabstop=4
setlocal shiftwidth=4 
setlocal foldmethod=indent


nmap <F5> <Esc>:w<CR>:!julia %<CR>

nnoremap <silent> <LocalLeader>O :call pluto#insert_cell_above()<CR>
nnoremap <silent> <LocalLeader>o :call pluto#insert_cell_below()<CR>

nnoremap <silent> <LocalLeader>yy :call pluto#yank_cell()<CR>
nnoremap <silent> <LocalLeader>dd :call pluto#delete_cell()<CR>

nnoremap <silent> <LocalLeader>P :call pluto#paste_cell_above()<CR>
nnoremap <silent> <LocalLeader>p :call pluto#paste_cell_below()<CR>

" nnoremap <silent> <LocalLeader>t :call pluto#toggle_code()<CR>

set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
