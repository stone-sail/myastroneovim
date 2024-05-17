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
vim.api.nvim_set_keymap("n", "<C-V>", "<C-V>", { noremap = true })
