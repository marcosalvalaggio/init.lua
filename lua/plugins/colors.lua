-- return {
--   'thimc/gruber-darker.nvim',
--   config = function()
--     require('gruber-darker').setup({
--       -- OPTIONAL
--       transparent = true, -- removes the background
--       -- underline = false, -- disables underline fonts
--       -- bold = false, -- disables bold fonts
--     })
--     vim.cmd.colorscheme('gruber-darker')
--   end,
-- }
return {
	"EdenEast/nightfox.nvim",
	config = function()
		vim.cmd.colorscheme("duskfox")
	end,
}
