return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = {
					normal = {
						a = { fg = "#ddd8bb", bg = "#5077be" },
						b = { fg = "#1f1f1f", bg = "#56741e" },
						c = { fg = "#ddd8bb", bg = "#1f1f28" },
					},
					insert = {
						a = { fg = "#1f1f1f", bg = "#6495ED" },
						b = { fg = "#1f1f1f", bg = "#565c18" },
						c = { fg = "#ddd8bb", bg = "#1f1f28" },
					},
					visual = {
						a = { fg = "#1f1f1f", bg = "#40E0D0" },
						b = { fg = "#ddd8bb", bg = "#2e290c" },
						c = { fg = "#ddd8bb", bg = "#1f1f28" },
					},
					replace = {
						a = { fg = "#ddd8bb", bg = "#e74c3c" },
						b = { fg = "#ddd8bb", bg = "#b95f30" },
						c = { fg = "#ddd8bb", bg = "#1f1f28" },
					},
					inactive = {
						a = { fg = "#ddd8bb", bg = "#1f1f28" },
						b = { fg = "#ddd8bb", bg = "#e7773c" },
						c = { fg = "#ddd8bb", bg = "#1f1f28" },
					},
				},
			},
		})
	end,
}
