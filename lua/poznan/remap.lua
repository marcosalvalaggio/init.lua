vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move hlt snippet
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true })

