return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.gofmt,
                null_ls.builtins.diagnostics.golangci_lint,
                --null_ls.builtins.diagnostics.phpcs.with({
                    --extra_args = {
                        --"--standard=PSR12",
                        --"--ignore=Generic.Files.LineLength,PEAR.Commenting,Generic.Functions.FunctionCallArgumentSpacing,Generic.WhiteSpace.DisallowTabIndent,Squiz.WhiteSpace.SuperfluousWhitespace.EndLine,PSR2.ControlStructures.ControlStructureSpacing",
                    --},
                --}),
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
