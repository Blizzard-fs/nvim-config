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
                    "lemminx",
                    "html"
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
           lspconfig.lua_ls.setup(
           {
                settings =
                {
                    Lua =
                    {
                        diagnostics =
                        {
                            global = { 'vim' }
                        }
                    }
                }
           })
           lspconfig.intelephense.setup({
                cmd = { "intelephense", "--stdio" },
                filetypes = { "php" },
                root_dir = lspconfig.util.root_pattern("", ".git")
            })
           lspconfig.sqlls.setup({})
           lspconfig.lemminx.setup({})
           lspconfig.html.setup({
                capabilities = vim.lsp.protocol.make_client_capabilities(), -- Set client capabilities
                cmd = { "vscode-html-language-server", "--stdio" }, -- Specify the command to start the language server
                filetypes = { "html", "templ" }, -- Specify supported filetypes
                init_options = { -- Specify init options
                    configurationSection = { "html", "css", "javascript" },
                    embeddedLanguages = {
                        css = true,
                        javascript = true
                    },
                    provideFormatter = true
                },
                root_dir = lspconfig.util.root_pattern("", ".git"), -- Specify root directory detection
                settings = {}
           })
        end
    }
}
