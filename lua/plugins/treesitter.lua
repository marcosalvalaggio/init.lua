return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter")
    configs.setup({
      ensure_installed = { "lua", "go", "python", "vim", "vimdoc", "query", "javascript", "c" },
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    })
    vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
      pattern = { "*.go", "*.py", "*.js", "*.lua", "*.c" },
      callback = function (args)
        vim.cmd("syntax off")
        pcall(vim.treesitter.start, args.buf)
      end,
    })
  end,
}
