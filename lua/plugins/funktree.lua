return {
    "marcosalvalaggio/funktree",
    config = function()
        vim.api.nvim_set_keymap('n', '<leader>k', ':Funk<CR>', {noremap=true})
    end
}
