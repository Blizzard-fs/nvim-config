return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = {
					normal = {
						a = { fg = "#1f1f1f", bg = "#18b9d7" },
						b = { fg = "#ddd8bb", bg = "#2f2f2f" },
						c = { fg = "#ddd8bb", bg = "#1f1f1f" },
					},
					insert = {
						a = { fg = "#1f1f1f", bg = "#6495ED" },
						b = { fg = "#ddd8bb", bg = "#2f2f2f" },
						c = { fg = "#ddd8bb", bg = "#1f1f1f" },
					},
					visual = {
						a = { fg = "#1f1f1f", bg = "#40E0D0" },
						b = { fg = "#ddd8bb", bg = "#2f2f2f" },
						c = { fg = "#ddd8bb", bg = "#1f1f1f" },
					},
					replace = {
						a = { fg = "#ddd8bb", bg = "#e74c3c" },
						b = { fg = "#ddd8bb", bg = "#2f2f2f" },
						c = { fg = "#ddd8bb", bg = "#1f1f1f" },
					},
					inactive = {
						a = { fg = "#ddd8bb", bg = "#1f1f28" },
						b = { fg = "#ddd8bb", bg = "#2f2f2f" },
						c = { fg = "#ddd8bb", bg = "#1f1f1f" },
					},
				},
			},
		})
	end,
}
