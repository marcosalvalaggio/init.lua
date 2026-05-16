return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local opts = { buffer = args.buf, silent = true }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)       -- Vai alla definizione
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)            -- Mostra documentazione
        vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)   -- Rinomina variabile/metodo
        vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts) -- Trova dove è usato
        vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts) -- Risoluzioni rapide (Code Actions)
        vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts) -- Popup errore sulla riga
        vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)          -- Prossimo errore
        vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)          -- Errore precedente
        vim.keymap.set("n", "<leader>vq", vim.diagnostic.setloclist, opts) -- Lista di tutti gli errori del file
      end,
    })

    -- Python (Pyright)
    if vim.lsp.config.pyright then
      vim.lsp.enable("pyright")
    end

    -- Go (Gopls)
    if vim.lsp.config.gopls then
      vim.lsp.config.gopls.settings = {
        gopls = {
          analyses = { unusedparams = true },
          staticcheck = true,
        },
      }
      vim.lsp.enable("gopls")
    end

    -- JavaScript / TypeScript (ts_ls)
    if vim.lsp.config.ts_ls then
      vim.lsp.enable("ts_ls")
    end

    -- HTML (html)
    if vim.lsp.config.html then
      vim.lsp.enable("html")
    end

    -- Lua (Configurazione per rimuovere i warning di "vim" non definito)
    if vim.lsp.config.lua_ls then
      vim.lsp.config.lua_ls.settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
        },
      }
      vim.lsp.enable("lua_ls")
    end
  end,
}
