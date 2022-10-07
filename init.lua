vim.api.nvim_exec( [[
source ~/.config/nvim/plugins/dein_setup.vim
]], false)

require('util')
require('mapping')
require('lsp')
