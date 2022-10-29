local opt = vim.opt
local api = vim.api

opt.mouse = ''
opt.laststatus = 3
opt.backup = false
opt.swapfile = false
opt.hidden = true
opt.smartindent = true
opt.expandtab =true
opt.tabstop = 4
opt.shiftwidth = 4
opt.foldlevelstart = 20
opt.breakindent = true
opt.breakindentopt = {'shift:0'} --  wrapした行もインデントする
opt.formatoptions : append('mM')  -- 日本語の行の連結時には空白を入力しない

-- TODO:うまく動かない時もある．原因追求
api.nvim_exec( [[
augroup remember_folds
  autocmd!
  autocmd BufWrite * mkview
  autocmd BufRead * silent! loadview
augroup END
]], false)

-- api.nvim_exec( [[
-- opt.viewoptions: remove('options')
-- autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
-- autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent! loadview | endif
-- ]], false)

api.nvim_exec( [[
au FileType qf call AdjustWindowHeight(2, 5)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction
]], false)
