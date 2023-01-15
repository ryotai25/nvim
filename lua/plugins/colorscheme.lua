return {
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup{
        style = "storm",
        on_colors = function(colors)
          colors.border = colors.dark3
        end
      }
      vim.cmd[[colorscheme tokyonight]]
    end
  },
}
