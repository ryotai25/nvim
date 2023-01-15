return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {"williamboman/mason.nvim", config = true },

      {
        "williamboman/mason-lspconfig.nvim",
        opts = {
          ensure_installed = {
            "julials",
            "texlab",
            "sumneko_lua",
            "pyright",
            "r_language_server",
            "vimls",
            "bashls"
          }
        }
      },

      {
        "neovim/nvim-lspconfig",
        commit = "3e2cc7061957292850cc386d9146f55458ae9fe3",
        config = function ()
          vim.diagnostic.config({
            virtual_text = false,
          })
        end
      },

      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
			{"hrsh7th/cmp-cmdline", commit = "d2dfa338520c99c1f2dc6af9388de081a6e63296"},
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "onsails/lspkind.nvim",
      "quangnguyen30192/cmp-nvim-ultisnips",

      {
        "sirver/ultisnips",
        config = function()
          vim.api.nvim_exec( [[
          let g:python_host_prog = $PYENV_ROOT.'/versions/neovim2/bin/python'
          let g:python3_host_prog = $PYENV_ROOT.'/versions/neovim3/bin/python'
          ]], false)
          vim.g.UltiSnipsExpandTrigger = '<C-j>'
          vim.g.UltiSnipsJumpForwardTrigger = '<C-j>'
          vim.g.UltiSnipsJumpBackwardTrigger = '<C-k>'
        end
      },

      "hrsh7th/cmp-nvim-lua",

    },
    config = function()

      local capabilities = require('cmp_nvim_lsp').default_capabilities(
      vim.lsp.protocol.make_client_capabilities()
      )

      require("mason-lspconfig").setup_handlers {
        function (server_name)
          require("lspconfig")[server_name].setup {
            capabilities = capabilities,
          }
        end,
      }

      local cmp = require("cmp")
      cmp.setup({
        sources = {
          { name = "nvim_lsp" },
          { name = 'nvim_lsp_signature_help'},
          { name = "buffer" },
          { name = "path" },
          { name = 'nvim_lua'},
          { name = "ultisnips" },
        },

        mapping = cmp.mapping.preset.insert({
          ["<C-p>"] = cmp.mapping.select_prev_item(),
          ["<C-n>"] = cmp.mapping.select_next_item(),
          -- ['<C-l>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        }),

        experimental = {
          ghost_text = false,
        },

        formatting = {
          format = require("lspkind").cmp_format({
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
    end
  },


  {
    "glepnir/lspsaga.nvim",

    config = function()
      require("lspsaga").setup({
        lightbulb = {
          enable = false
        },
        symbol_in_winbar = {
          enable = false
        }
      })

      local keymap = vim.keymap.set
      keymap("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
      keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })
      keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
      keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
      keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
    end
  },

  {
    "folke/neodev.nvim",
    config = true,
    ft = "lua"
  }
}
