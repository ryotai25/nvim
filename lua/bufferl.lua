require'nvim-web-devicons'.setup {default = true}
vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
    mode = "tabs",
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
  }
}
