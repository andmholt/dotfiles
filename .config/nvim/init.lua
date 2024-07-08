-- bootstrap lazy.nvim, LazyVim and your plugins

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.clipboard = "unnamed"
vim.opt.number = true
vim.opt.termguicolors = true
vim.g.mapleader = " "

-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = "*",
--   command = "silent! lcd %:p:h"
-- )

-- vim.cmd([[
--   let g:netrw_keepdir = 0
-- ]])

require("config.lazy")
