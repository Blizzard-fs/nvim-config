return {
    {
        "williamboman/mason.nvim",
        config = function()
            require('mason').setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    "bashls",
                    "cssls",
                    "dockerls",
                    "docker_compose_language_service",
                    "jsonls",
                    "quick_lint_js",
                    "lua_ls",
                    "intelephense",
                    "sqlls",
                    "lemminx"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
           local lspconfig = require("lspconfig")
           lspconfig.bashls.setup({})
           lspconfig.cssls.setup({})
           lspconfig.dockerls.setup({})
           lspconfig.docker_compose_language_service.setup({})
           lspconfig.jsonls.setup({})
           lspconfig.quick_lint_js.setup({})
           lspconfig.lua_ls.setup({})
           lspconfig.intelephense.setup({})
           lspconfig.sqlls.setup({})
           lspconfig.lemminx.setup({})
        end
    }
}
