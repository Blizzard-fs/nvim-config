return{
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1,
    config = function ()
        require('kanagawa').setup({
            compile = true,
            undercurl = true,
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true},
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = false,
            dimInactive = false,
            terminalColors = true,
            colors = {
                palette = {},
                theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
            },
            overrides = function()
            return {
                Normal = { bg = "#262626" }, -- Set the background explicitly
                NormalFloat = { bg = "#262626" }, -- Set floating window background
                FloatBorder = { bg = "#262626" }, -- Set border to match
            }
            end,
            theme = "wave",
            background = {
                dark = "wave",
                light = "lotus"
            },
        })

        vim.cmd("colorscheme kanagawa-wave")
        end,
    }
