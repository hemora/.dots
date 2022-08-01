vim.g.mapleader = " "

-- By default vim offers tab support
-- NewTab
vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>lua vim.api.nvim_command('tabnew')<cr>", {silent=true})
-- PrevTab
vim.api.nvim_set_keymap("n", "<leader>tp", "<cmd>lua vim.api.nvim_command('tabp')<cr>", {silent=true})
-- NextTab
vim.api.nvim_set_keymap("n", "<leader>tn", "<cmd>lua vim.api.nvim_command('tabn')<cr>", {silent=true})
