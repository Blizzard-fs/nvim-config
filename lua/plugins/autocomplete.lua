return {
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "rafamadriz/friendly-snippets",
            "saadparwaiz1/cmp_luasnip",
        },
        build = "make install_jsregexp",
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
            require("luasnip.loaders.from_vscode").lazy_load({
                paths = { './snippets' }
            })
            require("luasnip")
        end,
        event = "BufEnter",
        keys = {
            {
                "<tab>",
                function()
                    return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
                end,
                expr = true,
                silent = true,
                mode = "i",
            },
            { "<tab>",   function() require("luasnip").jump(1) end,  mode = "s" },
            { "<s-tab>", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },
        },
    },

    -- auto completion
    {
        "hrsh7th/nvim-cmp",
        version = false, -- last release is way too old
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "andersevenrud/cmp-tmux",
            -- Add lspkind for completion icons
            "onsails/lspkind-nvim",
        },
        event = "BufEnter",
        config = function()
            vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })

            local cmp = require("cmp")
            local lspkind = require("lspkind") -- Import lspkind
            local defaults = require("cmp.config.default")()

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                window = {
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
                    ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = false }),
                    ["<S-CR>"] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true,
                    }),
                    -- Add Emmet keybinding for manual expansion
                    ["<C-y>,"] = cmp.mapping(function(fallback)
                        cmp.confirm()
                    end, { "i", "s" }),

                    -- Add J and K keybindings to navigate the menu
                    ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
                    ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
                }),
                sources = cmp.config.sources(
                    {
                        { name = "nvim_lsp" },
                        { name = "luasnip" },
                        { name = "buffer" },
                        -- Add emmet_ls as a source if desired
                        { name = "path" },
                        { name = "tmux" },
                    }
                ),
                formatting = {
                    -- Use lspkind for completion icons
                    format = lspkind.cmp_format({
                        mode = "symbol_text", -- Show icons and text
                        maxwidth = 50, -- Prevent the popup from getting too large
                        ellipsis_char = "...", -- Truncate the text if too long
                    }),
                },
                experimental = {
                    ghost_text = {
                        hl_group = "CmpGhostText",
                    },
                },
                sorting = defaults.sorting,
            })
        end,
    },

    -- Add lspkind for icons
    {
        "onsails/lspkind-nvim",
        config = function()
            require('lspkind').init({
                mode = "symbol_text", -- Show both icons and text
                preset = "default",
                symbol_map = {
                    Text = "",
                    Method = "m",
                    Function = "",
                    Constructor = "",
                    Field = "",
                    Variable = "",
                    Class = "",
                    Interface = "",
                    Module = "",
                    Property = "",
                    Unit = "",
                    Value = "",
                    Enum = "",
                    Keyword = "",
                    Snippet = "",
                    Color = "",
                    File = "",
                    Reference = "",
                    Folder = "",
                    EnumMember = "",
                    Constant = "",
                    Struct = "",
                    Event = "",
                    Operator = "",
                    TypeParameter = "",
                },
            })
        end,
    },
}
