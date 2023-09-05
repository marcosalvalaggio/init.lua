function ToggleTaskPriority(priority)
    local line = vim.fn.getline('.')
    local new_line

    if priority == 0 then
        new_line = string.gsub(line, '%[%a%] ', '')
    else
        new_line = string.gsub(line, '%[%a%] ', '')
        -- The addition of 96 to priority is used to convert an integer value (1, 2, 3) into the corresponding ASCII character ('a', 'b', 'c')
        new_line = string.gsub(new_line, '^(%s*)%*', '%1* [' .. string.char(priority + 96) .. ']')
    end

    vim.fn.setline('.', new_line)
end

vim.api.nvim_set_keymap('n', '<leader>1', [[:lua ToggleTaskPriority(1)<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>2', [[:lua ToggleTaskPriority(2)<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>3', [[:lua ToggleTaskPriority(3)<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>0', [[:lua ToggleTaskPriority(0)<CR>]], { noremap = true, silent = true })

