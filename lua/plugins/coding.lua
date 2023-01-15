return {
  {
    "kylechui/nvim-surround",
    config = true,
    event = { "VimEnter" }
  },

  {
    "numToStr/Comment.nvim",
    config = true,
    event = { "VimEnter" }
  },

  {
    "brglng/vim-im-select",
    config = function()
      vim.g.im_select_default = 'com.apple.inputmethod.Kotoeri.RomajiTyping.Roman'
    end
  },

  "unblevable/quick-scope",
  "mattn/vim-findroot",
}
