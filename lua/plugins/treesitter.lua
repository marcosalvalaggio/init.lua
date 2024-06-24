return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				ensure_installed = {
					"c",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"python",
					"javascript",
					"html",
					"go",
					"rust",
					"css",
					"cpp",
				},
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
