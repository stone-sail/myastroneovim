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
vim.cmd "highlight LineNr guifg=#808080"
-- vim.cmd "highlight LineNr guifg=#FFFF00"

vim.cmd [[
  highlight ColorColumn guibg=gray
]]

-- 设置neoformat使用clang-format来格式化C文件
-- vim.g.neoformat_c_clangformat = {
--   exe = "clang-format",
--   args = { "--style='{BasedOnStyle: Google, IndentWidth: 10}'" },
--   -- stdin = 1,
-- }

-- vim.g.neoformat_enabled_c = ['clang_format']

-- vim.g.clang_format. style_options = { BasedOnStyle: Google}
