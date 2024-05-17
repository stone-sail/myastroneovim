-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.wo.cursorline = true
vim.wo.cursorcolumn = false
vim.wo.colorcolumn = "120"
vim.cmd "highlight CursorLine guibg=#4e4e4e"
vim.cmd "highlight CursorColumn guibg=#2e3e4e"

vim.cmd [[
  highlight ColorColumn guibg=gray
]]
