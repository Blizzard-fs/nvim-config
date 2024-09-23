local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local opts = {}

require("options")
require("lazy").setup("plugins") -- Here the plugins will be loaded

require('neoscroll').setup({
    easing_function = "quadratic"
})

local t = {}
t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '250', [['sine']] } }
t['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '250', [['sine']] } }
t['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', '500', [['circular']] } }
t['<C-f>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '500', [['circular']] } }
t['<C-y>'] = { 'scroll', { '-0.10', 'false', '100', nil } }
t['<C-e>'] = { 'scroll', { '0.10', 'false', '100', nil } }

require('neoscroll.config').set_mappings(t)
