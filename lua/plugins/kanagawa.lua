return {
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
            transparent = true,
            dimInactive = false,
            terminalColors = true,
            colors = {
                palette = {
                    bg = "#1f1f1f",
                },
                theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
            },
            overrides = function()
                return {
                    Normal = { bg = "#1f1f1f"},
                    NormalFloat = { bg = "#1f1f1f" },
                    FloatBorder = { bg = "#1f1f1f" },
                }
            end,
            theme = "wave",
            background = {
                dark = "wave",
                light = "lotus"
            },
        })

        vim.cmd("colorscheme kanagawa")
        vim.api.nvim_set_hl(0, "Normal", { bg = "#1f1f1f" }) -- Set background to #1f1f1f
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1f1f1f" })
        vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1f1f1f" })
        vim.api.nvim_set_hl(0, "Cursor", { fg = "#1f1f1f", bg = "#DDD8BB" }) -- Set cursor color to #DDD8BB
    end,
}
