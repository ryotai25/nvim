local on_attach = function(client, bufnr)
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
    vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
    -- vim.keymap.set("n", "<C-m>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
    vim.keymap.set("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
    vim.keymap.set("n", "rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
    vim.keymap.set("n", "ma", "<cmd>lua vim.lsp.buf.code_action()<CR>")
    vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
    -- set("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>")
    vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
    vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>")
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

require("mason-lspconfig").setup_handlers {
  function (server_name)
    require("lspconfig")[server_name].setup {
      on_attach = on_attach,
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

vim.diagnostic.config({
  virtual_text = false
})

vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

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
    ["<C-p>"] = cmp.mapping.select_prev_item(), --Ctrl+pで補完欄を一つ上に移動
    ["<C-n>"] = cmp.mapping.select_next_item(), --Ctrl+nで補完欄を一つ下に移動
    ['<C-l>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ["<C-y>"] = cmp.mapping.confirm({ select = true }),--Ctrl+yで補完を選択確定
  }),
  experimental = {
    ghost_text = false,
  },
})
