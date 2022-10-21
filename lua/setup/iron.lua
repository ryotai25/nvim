require("iron.core").setup {
  config = {
    should_map_plug = false, -- If iron should expose `<plug>(...)` mappings for the plugins
    scratch_repl = true, -- Whether a repl should be discarded or not
    repl_definition = { -- Your repl definitions come here
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
