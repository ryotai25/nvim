require("mason-lspconfig").setup({
    ensure_installed = {
        "julials",
        "texlab",
        "sumneko_lua", -- lua
        "pyright",
        "r_language_server",
        "vimls", -- vim
    }
})
