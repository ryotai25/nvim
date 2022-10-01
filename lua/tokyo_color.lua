require("tokyonight").setup({
  style = "storm",
  styles = {
    functions = {}
  },
  on_colors = function(colors)
    colors.border = colors.dark3
  end
})
vim.cmd[[colorscheme tokyonight]]
