local keymap = vim.api.nvim_set_keymap

keymap('i', 'jk', '<ESC>', { noremap = true })
keymap('i', 'ｊｋ', '<ESC>', { noremap = true })

keymap('n', '<Space>', ';', { noremap = true })
keymap('n', '<Up>', '<C-w>k', { noremap = true })
keymap('n', '<Down>', '<C-w>j', { noremap = true })
keymap('n', '<Left>', '<C-w>h', { noremap = true })
keymap('n', '<Right>', '<C-w>l', { noremap = true })

-- opt + ↓ ↑ ← →
keymap('n', '∆', '<C-w>j', { noremap = true })
keymap('n', '˚', '<C-w>k', { noremap = true })
keymap('n', '˙', '<C-w>h', { noremap = true })
keymap('n', '¬', '<C-w>l', { noremap = true })
keymap('t', '∆', '<C-w>j', { noremap = true })
keymap('t', '˚', '<C-w>k', { noremap = true })
keymap('t', '˙', '<C-w>h', { noremap = true })
keymap('t', '¬', '<C-w>l', { noremap = true })

keymap('n', '<C-w><C-t>', '<C-w>T', { noremap = true })

keymap('n', '<C-w><C-.>', '<C-w>>', { noremap = true })
keymap('n', '<C-w><C-,>', '<C-w><', { noremap = true })

keymap('c', '<C-p>', '<Up>', { noremap = true })
keymap('c', '<C-n>', '<Down>', { noremap = true })

-- keymap('c', '3b3b', '<C-u>undo<CR>', { noremap = true }) -- 起動時にキーが入力されてしまう本体の不具合？を回避
