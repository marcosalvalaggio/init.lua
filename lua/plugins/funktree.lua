return {
	"marcosalvalaggio/funktree",
    dependencies = {"nvim-telescope/telescope.nvim"},
	config = function()
		vim.api.nvim_set_keymap("n", "<leader>k", ":Funk<CR>", { noremap = true })
	end,
}
