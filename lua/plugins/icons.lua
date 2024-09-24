return {
   "nvim-tree/nvim-web-devicons",
    lazy = true,  -- Lazy-load this plugin when required
    config = function()
        require('nvim-web-devicons').setup({
            -- your personal icons / settings
            -- you can override the default icons by setting custom values
            override = {},
            -- globally enable default icons (default to false)
            -- will get overriden by `get_icons` option
            default = true,
        })
    end,
}
