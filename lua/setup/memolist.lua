vim.g.memolist_path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notes"
vim.g.memolist_memo_suffix = "md"
vim.g.momolist_denite = 1
vim.api.nvim_set_keymap('n', '<Leader>mn',  ':MemoNew<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>ml',  ':MemoList<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>mg',  ':MemoGrep<CR>', {noremap = true})
