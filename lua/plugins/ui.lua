return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
        options = {
          component_separators = '|' ,
          section_separators = { left = '', right = ''} ,
          glolbalstatus = true,
        },
    },
  },

  {
    "akinsho/bufferline.nvim",
    config = function()
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
    end,
    event = { "VeryLazy" },
  },

  {
    "folke/noice.nvim",
    config = true,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    event = { "VeryLazy" },
  },

  { "levouh/tint.nvim", config = true },
}
