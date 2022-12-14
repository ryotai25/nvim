vim.g.vimtex_compiler_latexmk = {
  build_dir = 'build',
  continuous = '1',
}
vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_fold_enabled = 1
vim.g.vimtex_quickfix_open_on_warinigs = 0
vim.g.vimtex_syntax_enabled = 0

vim.api.nvim_exec( [[
augroup vimtex
  autocmd!
  autocmd User VimtexEventView call b:vimtex.viewer.xdo_focus_vim()
augroup END
]], false)
