vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- move hlt snippet
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true })
vim.api.nvim_set_keymap("n", "<S-s>", ":Vista<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-d>", ":Vista!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>jj", ":%!jq .<CR>",  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bd", ":bd<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-t>", ":terminal powershell<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-]>', '>>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-[>', '<<', {noremap = true})
vim.api.nvim_set_keymap('v', '<C-]>', '>gv', {noremap = true})
vim.api.nvim_set_keymap('v', '<C-[>', '<gv', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>r', ':e .<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>q', ':q!<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>s', ':wq<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<C-a>', ':normal! gg0vG$<CR>', {noremap=true})

