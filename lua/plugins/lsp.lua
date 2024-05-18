return {
    -- {
    --     "williamboman/mason.nvim",
    --     lazy = false,
    --     config = function()
    --         require("mason").setup()
    --     end,
    -- },
    -- {
    --     "williamboman/mason-lspconfig.nvim",
    --     lazy = false,
    --     opts = {
    --         auto_install = true,
    --     },
    --     config = function()
    --         require("mason-lspconfig").setup({
    --             ensure_installed = {
    --                 "lua_ls",
    --                 "pyright",
    --                 "clangd",
    --                 "html",
    --                 "quick_lint_js",
    --                 "tsserver"
    --             }
    --         })
    --     end
    -- },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup{}
            lspconfig.pyright.setup{}
            -- lspconfig.quick_lint_js.setup{}
            lspconfig.tsserver.setup{}
            lspconfig.rust_analyzer.setup{}
            -- keymap
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }

}

