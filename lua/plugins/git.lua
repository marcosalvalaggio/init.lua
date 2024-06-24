return {
	{
		"airblade/vim-gitgutter",
	},
	{
		"kdheepak/lazygit.nvim",
		config = function()
			vim.api.nvim_set_keymap("n", "<leader>gg", ":LazyGit<CR>", { noremap = true })
		end,
	},
}
