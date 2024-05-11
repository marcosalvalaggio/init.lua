require('undotree').setup()
vim.keymap.set('n', '<leader>n', require('undotree').toggle, { noremap = true, silent = true })
