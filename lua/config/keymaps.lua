vim.api.nvim_set_keymap("n", "<localleader>ei", ":edit ~/.config/nvim/init.lua<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<localleader>eo",
  ":edit ~/.config/nvim/lua/config/options.lua<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<localleader>ek",
  ":edit ~/.config/nvim/lua/config/keymaps.lua<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<localleader>ec", ":cd ~/.config/nvim<CR>", { noremap = true, silent = true })

-- 复制到系统剪贴板
vim.api.nvim_set_keymap("n", "<C-c>", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })
-- 从系统剪贴板粘贴
vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-v>", "<C-r>+", { noremap = true, silent = true })
