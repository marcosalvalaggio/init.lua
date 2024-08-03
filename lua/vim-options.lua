-- Basic vim options
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.guicursor = "n-v-i-c:block-Cursor"
vim.opt.colorcolumn = "120"

-- Remap
vim.g.mapleader = " "
-- Filesystem move
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.api.nvim_set_keymap("n", "<leader>r", ":e .<CR>", { noremap = true })
-- move hlt snippet of text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- copy and paste
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true })
vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true })
vim.api.nvim_set_keymap("n", "<C-a>", ":normal! gg0vG$<CR>", { noremap = true }) -- select all the text
-- json formatter
vim.api.nvim_set_keymap("n", "<leader>jj", ":%!jq .<CR>", { noremap = true, silent = true })
-- terminal
vim.api.nvim_set_keymap("n", "<S-t>", ":terminal powershell<CR>", { noremap = true, silent = true })
-- indent/unindent
vim.api.nvim_set_keymap("n", "<leader>i", ">>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>u", "<<", { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>i", ">gv", { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>u", "<gv", { noremap = true })
-- Save/exit command
vim.api.nvim_set_keymap("n", "<leader>q", ":q!<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>s", ":wq<CR>", { noremap = true })
-- close buffer
vim.api.nvim_set_keymap("n", "<leader>bd", ":bd<CR>", { noremap = true, silent = true })
-- delete the hlg code of search
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
