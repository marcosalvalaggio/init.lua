-- This file can be loaded by calling lua require('plugins') from your init.vim

-- Only required if you have packer configured as opt
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.1',
   -- or                            , branch = '0.1.x',
   requires = { {'nvim-lua/plenary.nvim'} }
  }

   use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
     vim.cmd('colorscheme rose-pine')
    end
   })
  
  use("theprimeagen/harpoon")
  use({
   "kdheepak/lazygit.nvim",
   -- optional for floating window border decoration
   requires = {
    "nvim-lua/plenary.nvim",
   },
  })
  use("folke/zen-mode.nvim")
  use("tpope/vim-commentary")
  use("vim-airline/vim-airline")
  use("lukas-reineke/indent-blankline.nvim")
  use("liuchengxu/vista.vim")
  use("airblade/vim-gitgutter")
 use({
  "nvim-treesitter/nvim-treesitter",
  run = function()
   require("nvim-treesitter.install").update({ with_sync = true })
   require 'nvim-treesitter.install'.compilers = { "gcc" }
  end,
 })
  use("nvim-treesitter/playground")


  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use("marcosalvalaggio/funktree")


end)
