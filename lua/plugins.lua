local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
  "mattn/vim-findroot",

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects" ,
    },
    build = ":TSUpdate",
    config = function()
      require("setup.nvim-treesitter")
    end
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "kkharji/sqlite.lua",
      "nvim-telescope/telescope-frecency.nvim" ,
      "nvim-telescope/telescope-z.nvim" ,
      "nvim-telescope/telescope-ghq.nvim" ,
      "nvim-telescope/telescope-file-browser.nvim" ,
      "nvim-telescope/telescope-project.nvim" ,
      "LinArcX/telescope-command-palette.nvim" ,
    },
    config = function()
      require("setup.telescope")
    end,
    event = "VimEnter",
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {"williamboman/mason.nvim", config = true },
      "williamboman/mason-lspconfig.nvim",
      {"neovim/nvim-lspconfig", commit = "3e2cc7061957292850cc386d9146f55458ae9fe3"},
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-buffer",
			{"hrsh7th/cmp-cmdline", commit = "d2dfa338520c99c1f2dc6af9388de081a6e63296"},
      "hrsh7th/cmp-path",
      "onsails/lspkind.nvim",
      "quangnguyen30192/cmp-nvim-ultisnips",
      "sirver/ultisnips",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "glepnir/lspsaga.nvim",
      -- "j-hui/fidget.nvim",
      {"folke/neodev.nvim", config = true }
    },
    config = function()
      require("setup.cmp")
    end
  },

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

  "nvim-lua/popup.nvim",
  "theblob42/drex.nvim",
  "unblevable/quick-scope",

  { "kyazdani42/nvim-web-devicons", config = true },
  { "kylechui/nvim-surround", config = true },
  { "numToStr/Comment.nvim", config = true },
  { "levouh/tint.nvim", config = true },
  { "kyazdani42/nvim-tree.lua", config = true },
  { "lewis6991/gitsigns.nvim", config = true },
  { "akinsho/toggleterm.nvim", config = { start_in_insert = false } },
  { "folke/todo-comments.nvim", dependencies = "nvim-lua/plenary.nvim", config = true },
  { "goolord/alpha-nvim", config = function() require('alpha').setup(require'alpha.themes.startify'.config) end },
  { "brglng/vim-im-select", config = function() vim.g.im_select_default = 'com.apple.inputmethod.Kotoeri.RomajiTyping.Roman' end },

  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime"
  },


  {
    "folke/noice.nvim",
    event = "VimEnter",
    config = true,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },

  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require('lualine').setup{
        options = {
          component_separators = '|' ,
          section_separators = { left = '', right = ''} ,
          glolbalstatus = true,
        },
      }
    end
  },

  {
    "akinsho/bufferline.nvim",
    config = function()
      require("setup.bufferline")
    end
  },

  {
    "kdheepak/lazygit.nvim",
    config = function()
      require("setup.lazygit")
    end,
    event = { "VimEnter" }
  },

  {
    "hkupty/iron.nvim",
    config = function()
      require("setup.iron")
    end,
  },

  { "kevinhwang91/nvim-bqf", opt = true, ft = 'qf', },
  {
    "lervag/vimtex",
    config = function()
      require("setup.vimtex")
    end,
    opt = true,
    ft = {'tex', 'latex'}
  },

  {
    "ryotai25/memolist.vim",
    config = function()
      require("setup.memolist")
    end,
  },

  {
    "voldikss/vim-translator",
    config = function()
      vim.g.translator_target_lang = 'ja'
      vim.api.nvim_set_keymap('n', '<Leader>w', '<Plug>TranslateW', { noremap = true})
      vim.api.nvim_set_keymap('v', '<Leader>w', '<Plug>TranslateWV', { noremap = true})
    end
  },

  {
    "JuliaEditorSupport/julia-vim",
    config = function()
      vim.g.latex_to_unicode_file_types = {'julia', 'tex', 'latex'}
    end,
    -- ft = {'julia', 'tex', 'latex'},
  },

  {
    "hasundue/vim-pluto",
    dependencies = {
      "vim-denops/denops.vim"
    },
    ft = 'julia',
    opt = true,
  },
})
