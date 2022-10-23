vim.api.nvim_exec( [[
let g:python_host_prog = $PYENV_ROOT.'/versions/neovim2/bin/python'
let g:python3_host_prog = $PYENV_ROOT.'/versions/neovim3/bin/python'
]], false)

require('mason').setup()
require('mason-lspconfig').setup()
require("fidget").setup()

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

require("mason-lspconfig").setup{
    ensure_installed = {
        "julials",
        "texlab",
        "sumneko_lua", -- lua
        "pyright",
        "r_language_server",
        "vimls", -- vim
    }
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
  virtual_text = false,
})

local lspkind = require 'lspkind'
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

  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 50,
      ellipsis_char = '...',
    })
  },

  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  }

})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "path" },
    { name = 'cmdline' }
  },
})

cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

vim.g.UltiSnipsExpandTrigger = '<C-j>'
vim.g.UltiSnipsJumpForwardTrigger = '<C-j>'

vim.g.UltiSnipsJumpBackwardTrigger = '<C-k>'
