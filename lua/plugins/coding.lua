return {
  {
    "kylechui/nvim-surround",
    config = true,
    event = { "VeryLazy" }
  },

  {
    "numToStr/Comment.nvim",
    config = true,
    event = { "VeryLazy" }
  },

  {
    "brglng/vim-im-select",
    config = function()
      vim.g.im_select_default = 'com.apple.inputmethod.Kotoeri.RomajiTyping.Roman'
    end,
    event = { "VeryLazy" }
  },

  {
    "unblevable/quick-scope",
    event = { "VeryLazy" },
    config = function()
      vim.g.qs_filetype_blacklist = {'alpha', 'help'}
      vim.g.qs_buftype_blacklist = {'terminal', 'nowrite'}
    end
  },

  {
  "mattn/vim-findroot",
    event = { "VeryLazy" }
  },
}
