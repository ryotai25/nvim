

lua <<EOF
local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
        mappings = {
          n = {
            ["q"] = actions.close,
          },
        },
    }
}
require('telescope').load_extension('z')
require('telescope').load_extension('ghq')
EOF
nnoremap <leader>t <cmd>Telescope<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fr <cmd>Telescope frecency<cr>
nnoremap <leader>x <cmd>Telescope file_browser<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <silent> <leader>z :Telescope z list<CR>
nnoremap <silent> <leader>q :Telescope ghq list<CR>
