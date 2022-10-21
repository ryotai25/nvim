require("bufferline").setup{
  options = {
    mode = "tabs",
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
  }
}
vim.api.nvim_set_keymap('n', 'gt', '<Cmd>BufferLineCycleNext<CR>', {})
vim.api.nvim_set_keymap('n', 'gT', '<Cmd>BufferLineCyclePrev<CR>', {})
vim.api.nvim_set_keymap('n', '<C-j>', '<Cmd>BufferLineCycleNext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<Cmd>BufferLineCyclePrev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Right>', '<Cmd>BufferLineCycleNext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Left>', '<Cmd>BufferLineCyclePrev<CR>', { noremap = true })
