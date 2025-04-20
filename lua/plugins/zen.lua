return {
    -- Lua
    "folke/zen-mode.nvim",
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    config = function()
		vim.api.nvim_set_keymap("n", "<leader>z", ":ZenMode<CR>", { noremap = true })
	end,

}
