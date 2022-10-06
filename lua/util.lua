
local opt = vim.opt

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

vim.api.nvim_exec( [[
autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif " Save fold settings.
autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent! loadview | endif
]], false)
-- -- vim.api.nvim_exec( [[
-- -- ]], false)
--
-- -- opt.viewoptions-=options " Don't save options.
opt.viewoptions: remove('options')
-- " Don't save options.

vim.api.nvim_exec( [[
source ~/.config/nvim/mapping.vim
]], false)
