vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd [[packadd packer.nvim]]

function get_setup(name)
  return string.format('require("setup/%s")', name)
end

require'packer'.startup(function(use)
  use{'wbthomason/packer.nvim', opt = true}

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = { "julia", "lua", "vim", "latex", "markdown", "json", "fish", "python", "r", "toml", "bash", "regex"},
        highlight = { enable = true }
      }
    end,
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {"kkharji/sqlite.lua"},
      { 'nvim-telescope/telescope-frecency.nvim' },
      { 'nvim-telescope/telescope-z.nvim' },
      { 'nvim-telescope/telescope-ghq.nvim' },
      { 'nvim-telescope/telescope-file-browser.nvim' },
      { 'nvim-telescope/telescope-project.nvim' },
      { 'LinArcX/telescope-command-palette.nvim' },
    },
    config = get_setup("telescope"),
    event = { "VimEnter" }
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { "williamboman/mason.nvim", },
      { "williamboman/mason-lspconfig.nvim", },
      { "neovim/nvim-lspconfig" },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-cmdline' },
      { 'hrsh7th/cmp-path' },
      { 'onsails/lspkind.nvim' },
      { 'quangnguyen30192/cmp-nvim-ultisnips' },
      { 'sirver/ultisnips' },
      { 'hrsh7th/cmp-nvim-lsp-signature-help' },
      { 'glepnir/lspsaga.nvim' },
      { 'j-hui/fidget.nvim'}
    },
    config = get_setup("cmp"),
  }

  use {
    'folke/tokyonight.nvim',
    config = function()
      require("tokyonight").setup{
        style = "storm",
        on_colors = function(colors)
          colors.border = colors.dark3
        end
      }
    end
  }

  use { 'kyazdani42/nvim-web-devicons', config = function() require'nvim-web-devicons'.setup{default = true} end }
  use { 'folke/todo-comments.nvim', requires = "nvim-lua/plenary.nvim", config = function() require('todo-comments').setup{} end }
  use { 'kylechui/nvim-surround', config = function() require('nvim-surround').setup{} end }
  use { 'numToStr/Comment.nvim', config = function() require('Comment').setup{} end }
  use { 'levouh/tint.nvim', config = function() require('tint').setup{} end }
  use { 'goolord/alpha-nvim', config = function() require('alpha').setup(require'alpha.themes.startify'.config) end }
  use { 'kyazdani42/nvim-tree.lua', config = function() require('nvim-tree').setup() end }
  use { 'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end }
  use { 'akinsho/toggleterm.nvim', config = function() require('toggleterm').setup{ start_in_insert = false } end }
  use { 'brglng/vim-im-select', config = function() vim.g.im_select_default = 'com.apple.inputmethod.Kotoeri.RomajiTyping.Roman' end }
  use 'nvim-lua/popup.nvim'
  use 'theblob42/drex.nvim'
  use 'unblevable/quick-scope'
  use 'mattn/vim-findroot'
  use 'kevinhwang91/nvim-bqf'

  use {
    "folke/noice.nvim",
    event = "VimEnter",
    config = function()
      require("noice").setup()
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  }

  use {
    'akinsho/bufferline.nvim',
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
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup{
        options = {
          component_separators = '|' ,
          section_separators = { left = '', right = ''} ,
        },
      }
    end
  }

  use {
    'kdheepak/lazygit.nvim',
    config = function()
      vim.api.nvim_set_keymap('n', '<leader>lg', '<cmd>LazyGit<CR>', {noremap = true})
      vim.g.lazygit_floating_window_winblend = 0
      vim.g.lazygit_floating_window_scaling_factor = 0.9
      vim.g.lazygit_floating_window_corner_chars = {'╭', '╮', '╰', '╯'}
      vim.g.lazygit_floating_window_use_plenary = 0
      vim.g.lazygit_use_neovim_remote = 1
    end,
    opt = true,
    event = { "VimEnter" }
  }

  -- TODO: 変更
  use {
    'hkupty/iron.nvim'
  }

  use {
    'voldikss/vim-translator',
    config = function()
      vim.g.translator_target_lang = 'ja'
      vim.api.nvim_set_keymap('n', '<Leader>w', '<Plug>TranslateW', { noremap = true})
    end
  }

  use {
 'lervag/vimtex',
 }
 use {
   'JuliaEditorSupport/julia-vim',
   config = function()
     vim.g.latex_to_unicode_file_types = {'julia', 'tex', 'latex'}
   end
 }

 use {
   'hasundue/vim-pluto',
   requires = {
     'vim-denops/denops.vim'
   },
   ft = 'julia',
   opt = true,
 }
end)
