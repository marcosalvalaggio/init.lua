return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
        indent = { char = "|" },
        scope = { enabled = false },
    },
    config = function(plugin, opts) -- You can receive the plugin spec and merged opts here
        require("ibl").setup(opts)
    end,
}
