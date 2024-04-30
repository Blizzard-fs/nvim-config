vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set nowrap")
vim.g.mapleader = " "
-- vim.api.nvim_create_augroup("neotree", {})
-- vim.api.nvim_create_autocmd("UiEnter", {
-- 	desc = "Open Neotree automatically",
-- 	group = "neotree",
-- 	callback = function()
-- 		if vim.fn.argc() == 0 then
-- 			vim.cmd("Neotree toggle")
-- 			vim.cmd("Alpha")
--             vim.cmd("wincmd w")
-- 		end
-- 	end,
-- })
--
