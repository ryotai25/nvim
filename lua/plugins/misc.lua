return {
  {
    "kyazdani42/nvim-web-devicons",
    config = true
  },

  { "kylechui/nvim-surround", config = true },
  { "numToStr/Comment.nvim", config = true },
  { "levouh/tint.nvim", config = true },
  { "kyazdani42/nvim-tree.lua", config = true },

  {
    "lewis6991/gitsigns.nvim",
    config = true,
    event = { "VimEnter" }
  },

  { "akinsho/toggleterm.nvim", opts = { start_in_insert = false } },

  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = true
  },

  {
    "goolord/alpha-nvim",
    config = function()
      require('alpha').setup(require'alpha.themes.startify'.config)
    end
  },

  {
    "brglng/vim-im-select",
    config = function()
      vim.g.im_select_default = 'com.apple.inputmethod.Kotoeri.RomajiTyping.Roman'
    end },

  "nvim-lua/popup.nvim",
  "theblob42/drex.nvim",
  "unblevable/quick-scope",
  "mattn/vim-findroot",
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime"
  },

  {
    "kdheepak/lazygit.nvim",
    config = function()
      -- require("setup.lazygit")
      vim.api.nvim_set_keymap('n', '<leader>lg', '<cmd>LazyGit<CR>', {noremap = true})
      vim.g.lazygit_floating_window_winblend = 0
      vim.g.lazygit_floating_window_scaling_factor = 0.9
      vim.g.lazygit_floating_window_corner_chars = {'╭', '╮', '╰', '╯'}
      vim.g.lazygit_floating_window_use_plenary = 0
      vim.g.lazygit_use_neovim_remote = 1
    end,
    event = { "VimEnter" }
  },

  {
    "hkupty/iron.nvim",
    config = function()
      -- require("setup.iron")
      require("iron.core").setup {
        config = {
          should_map_plug = false,
          scratch_repl = true,
          repl_definition = {
            sh = {
              command = {"fish"}
            }
          },
          -- repl_open_cmd = require('iron.view').curry.bottom(40),
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
      vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>IronFocus<CR>', {noremap = true})
    end,
  },

  { "kevinhwang91/nvim-bqf", opt = true, ft = 'qf', },

  {
    "lervag/vimtex",
    config = function()
      -- require("setup.vimtex")
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
    -- opt = true,
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
}
