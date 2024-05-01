return {
    "navarasu/onedark.nvim",
    config = function ()
        require('onedark').setup {
            style = 'deep',
            transparent = true,
            term_colors = true,
            ending_tildes = true,
            lualine = {
                transparent = true,
            }
        }
        require('onedark').load()
    end,
}
