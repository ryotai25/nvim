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

  "unblevable/quick-scope",
  "mattn/vim-findroot",
}
