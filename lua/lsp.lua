-- local on_attach = function(client, bufnr)
--     vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
--     vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
--     -- vim.keymap.set("n", "<C-m>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
--     -- vim.keymap.set("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
--     vim.keymap.set("n", "rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
--     vim.keymap.set("n", "ma", "<cmd>lua vim.lsp.buf.code_action()<CR>")
--     vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
--     -- set("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>")
--     vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
--     vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>")
-- end
--
-- local keymap = vim.keymap.set
-- local saga = require('lspsaga')
--
-- saga.init_lsp_saga()
-- keymap("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
-- keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })
-- keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
-- keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
-- keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
--
-- end



require('lspsaga').init_lsp_saga({
    code_action_lightbulb = {
        enable = false,
    }
})

local keymap = vim.keymap.set
keymap("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })




local capabilities = require('cmp_nvim_lsp').default_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

require("mason-lspconfig").setup_handlers {
  function (server_name)
    require("lspconfig")[server_name].setup {
      -- on_attach = on_attach,
      capabilities = capabilities,
    }
  end,
}

require('lspconfig').sumneko_lua.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'},
      },
    },
  },
}

-- require('lspconfig').julials.setup{
--   settings = {
--     Julia = {
--       diagnostics = {
--       },
--     },
--   },
-- }

vim.diagnostic.config({
  virtual_text = false,
})

local cmp = require("cmp")
cmp.setup({
  sources = {
    { name = "nvim_lsp" },
    { name = 'nvim_lsp_signature_help'},
    { name = "buffer" },
    { name = "path" },
    { name = 'nvim_lua'},
    { name = 'cmdline'},
    { name = "ultisnips" },
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ['<C-l>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
  }),
  experimental = {
    ghost_text = false,
  },
})
