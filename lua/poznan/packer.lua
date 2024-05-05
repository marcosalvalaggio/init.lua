-- This file can be loaded by calling lua require('plugins') from your init.vim

-- Only required if you have packer configured as opt
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim' 
  -- Zen mode
  use("folke/zen-mode.nvim")
  -- Autocomment
  use("tpope/vim-commentary")
  -- Lean & mean status/tabline 
  use("vim-airline/vim-airline")
  -- Indent
  use("lukas-reineke/indent-blankline.nvim")
  use("liuchengxu/vista.vim")
  -- Git change
  use("airblade/vim-gitgutter")
  -- Best plugin ever build
  use("marcosalvalaggio/funktree")
  -- Undotree plug
  use("mbbill/undotree")
  -- Best color scheme
  use("blazkowolf/gruber-darker.nvim")
  -- Harpoon + dependencies
  use "nvim-lua/plenary.nvim"
  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  -- Telescope (fuzzy finder)
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- LSP
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}

end)
