return {
    "tpope/vim-commentary",
    config = function()
        vim.api.nvim_set_keymap('n', '<leader>/', ':Commentary<CR>', {noremap=true})
        vim.api.nvim_set_keymap('v', '<leader>/', ':Commentary<CR>', {noremap=true})
    end
}
