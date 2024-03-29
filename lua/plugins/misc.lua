return {
  {
    "nvim-tree/nvim-web-devicons",
    config = true
  },

  {
    "kyazdani42/nvim-tree.lua",
    config = true,
    event = { "VeryLazy" },
  },
  {
    "akinsho/toggleterm.nvim",
    opts = {
      start_in_insert = false
    },
    event = { "VeryLazy" },
  },

  {
    "lewis6991/gitsigns.nvim",
    config = true,
    event = { "VeryLazy" },
  },


  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
    event = { "VeryLazy" },
  },

  {
    "goolord/alpha-nvim",
    config = function()
      require('alpha').setup(require'alpha.themes.startify'.config)
    end
  },

  {
    "theblob42/drex.nvim",
    event = { "VeryLazy" },
  },

  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime"
  },

  {
    "kdheepak/lazygit.nvim",
    config = function()
      vim.api.nvim_set_keymap('n', '<leader>lg', '<cmd>LazyGit<CR>', {noremap = true})
      vim.g.lazygit_floating_window_winblend = 0
      vim.g.lazygit_floating_window_scaling_factor = 0.9
      vim.g.lazygit_floating_window_corner_chars = {'╭', '╮', '╰', '╯'}
      vim.g.lazygit_floating_window_use_plenary = 0
      vim.g.lazygit_use_neovim_remote = 1
    end,
    event = { "VeryLazy" },
  },

  {
    "hkupty/iron.nvim",
    config = function()
      require("iron.core").setup {
        config = {
          should_map_plug = false,
          scratch_repl = true,
          repl_definition = {
            sh = {
              command = {"fish"}
            }
          },
          repl_open_cmd = 'belowright 72 vsplit',
        },

        keymaps = {
          send_motion = "<Leader>sc",
          visual_send = "<Leader>sc",
          send_file = "<Leader>sf",
          send_line = "<Leader>ss",
          cr = "<Leader>s<cr>",
          interrupt = "<Leader>s<space>",
          exit = "<Leader>sq",
          clear = "<Leader>cl",
        },

        highlight = {
          italic = true
        }
      }
    end,
    keys = {
      { "<leader>r", "<cmd>IronFocus<CR>", }
    }
  },

  {
    "kevinhwang91/nvim-bqf",
    opt = true,
    ft = 'qf'
  },

  {
    "lervag/vimtex",
    config = function()
      vim.g.vimtex_compiler_latexmk = {
        build_dir = 'build',
        continuous = '1',
      }
      vim.g.vimtex_view_method = 'skim'
      vim.g.vimtex_fold_enabled = 1
      vim.g.vimtex_quickfix_open_on_warinigs = 0
      vim.g.vimtex_syntax_enabled = 0

      vim.api.nvim_exec( [[
      augroup vimtex
        autocmd!
        autocmd User VimtexEventView call b:vimtex.viewer.xdo_focus_vim()
      augroup END
      ]], false)
    end,
    ft = {'tex', 'latex'}
  },

  {
    "ryotai25/memolist.vim",
    config = function()
      vim.g.memolist_path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notes"
      vim.g.memolist_memo_suffix = "md"
      vim.g.momolist_denite = 1
      vim.api.nvim_set_keymap('n', '<Leader>mn',  ':MemoNew<CR>', {noremap = true})
      vim.api.nvim_set_keymap('n', '<Leader>ml',  ':MemoList<CR>', {noremap = true})
      vim.api.nvim_set_keymap('n', '<Leader>mg',  ':MemoGrep<CR>', {noremap = true})
    end,
    event = { "VeryLazy" },
  },

  {
    "voldikss/vim-translator",
    config = function()
      vim.g.translator_target_lang = 'ja'
      vim.api.nvim_set_keymap('n', '<Leader>w', '<Plug>TranslateW', { noremap = true})
      vim.api.nvim_set_keymap('v', '<Leader>w', '<Plug>TranslateWV', { noremap = true})
    end,
    event = { "VeryLazy" },
  },

  {
    "JuliaEditorSupport/julia-vim",
    config = function()
      vim.g.latex_to_unicode_file_types = {'julia', 'tex', 'latex'}
    end,
    event = { "VeryLazy" },
  },

  {
    "hasundue/vim-pluto",
    dependencies = {
      "vim-denops/denops.vim"
    },
    ft = 'julia',
    opt = true,
  },
}
