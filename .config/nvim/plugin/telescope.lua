--nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
--nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
--nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
--nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

vim.g.mapleader = " "
-- vim.api.nvim_set_keymap("n", "<leader>f", "require('telescope.builtin').find_files()<cr>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", {silent = true})  


