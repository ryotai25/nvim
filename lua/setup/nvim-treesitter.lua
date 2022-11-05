require'nvim-treesitter.configs'.setup{
  ensure_installed = {
    "julia",
    "lua",
    "vim",
    "latex",
    "markdown",
    "json",
    "fish",
    "python",
    "r",
    "toml",
    "bash",
    "regex"
  },
  highlight = { enable = true },
  textobjects = {
    select = {
      enable = true,
      loadahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["al"] = "@loop.outer",
        ["il"] = "@loop.inner",
      }
    }
  }
}
