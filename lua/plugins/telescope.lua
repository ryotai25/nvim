return {
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
      -- require("setup.telescope")
      local actions = require('telescope.actions')
      require('telescope').setup{
          defaults = {
              mappings = {
                n = {
                  ["q"] = actions.close,
                  },
              },
          },
          extensions = {
              project = {
                  base_dirs = {
                      '~/.julia/dev/'
                  }
              },
              command_palette = {
                  {"File",
                      { "entire selection (C-a)", ':call feedkeys("GVgg")' },
                      { "save current file (C-s)", ':w' },
                      { "save all files (C-A-s)", ':wa' },
                      { "quit (C-q)", ':qa' },
                      { "file browser (C-i)", ":lua require'telescope'.extensions.file_browser.file_browser()", 1 },
                      { "search word (A-w)", ":lua require('telescope.builtin').live_grep()", 1 },
                      { "git files (A-f)", ":lua require('telescope.builtin').git_files()", 1 },
                      { "files (C-f)",     ":lua require('telescope.builtin').find_files()", 1 },
                  },
                  {"Help",
                      { "tips", ":help tips" },
                      { "cheatsheet", ":help index" },
                      { "tutorial", ":help tutor" },
                      { "summary", ":help summary" },
                      { "quick reference", ":help quickref" },
                      { "search help(F1)", ":lua require('telescope.builtin').help_tags()", 1 },
                  },
                  {"Vim",
                      { "reload vimrc", ":source $MYVIMRC" },
                      { 'check health', ":checkhealth" },
                      { "jumps (Alt-j)", ":lua require('telescope.builtin').jumplist()" },
                      { "commands", ":lua require('telescope.builtin').commands()" },
                      { "command history", ":lua require('telescope.builtin').command_history()" },
                      { "registers (A-e)", ":lua require('telescope.builtin').registers()" },
                      { "colorshceme", ":lua require('telescope.builtin').colorscheme()", 1 },
                      { "vim options", ":lua require('telescope.builtin').vim_options()" },
                      { "keymaps", ":lua require('telescope.builtin').keymaps()" },
                      { "buffers", ":Telescope buffers" },
                      { "search history (C-h)", ":lua require('telescope.builtin').search_history()" },
                      { "paste mode", ':set paste!' },
                      { 'cursor line', ':set cursorline!' },
                      { 'cursor column', ':set cursorcolumn!' },
                      { "spell checker", ':set spell!' },
                      { "relative number", ':set relativenumber!' },
                      { "search highlighting (F12)", ':set hlsearch!' },
                  },
              }
          }
      }
      require'telescope'.load_extension('z')
      require'telescope'.load_extension('ghq')
      require'telescope'.load_extension("file_browser")
      require'telescope'.load_extension("frecency")
      require'telescope'.load_extension('project')
      require'telescope'.load_extension('command_palette')

      local keymap = vim.api.nvim_set_keymap
      keymap('n', '<Leader>t', '<Cmd>Telescope<CR>', { noremap = true })
      keymap('n', '<Leader>tt', '<Cmd>TodoTelescope<CR>', { noremap = true })
      keymap('n', '<Leader>ff', '<Cmd>Telescope find_files<CR>', { noremap = true })
      keymap('n', '<Leader>fr', '<Cmd>Telescope frecency<CR>', { noremap = true })
      keymap('n', '<Leader>x', '<Cmd>Telescope file_browser<CR>', { noremap = true })
      keymap('n', '<Leader>g', '<Cmd>Telescope live_grep<CR>', { noremap = true })
      keymap('n', '<Leader>b', '<Cmd>Telescope buffers<CR>', { noremap = true })
      keymap('n', '<Leader>pr', '<Cmd>Telescope project<CR>', { noremap = true })
      keymap('n', '<Leader>fh', '<Cmd>Telescope help_tags<CR>', { noremap = true })
      keymap('n', '<Leader>c', '<Cmd>Telescope command_palette<CR>', { noremap = true })

      keymap('n', '<Leader>z', '<Cmd>Telescope z list<CR>', { noremap = true })
      keymap('n', '<Leader>q', '<Cmd>Telescope ghq list<CR>', { noremap = true })
    end,
    event = "VeryLazy",
  },
}
