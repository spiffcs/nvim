-- This file can be loaded by calling `lua require('plugins')`
-- Make sure this is from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- File browser 
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- colorscheme
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  require("rose-pine").setup({
              disable_background = false,
              disable_italics = false,
          })
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  -- incremental parsing library for concrete syntax tree
  -- https://tree-sitter.github.io/tree-sitter/
  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- TODO: install copilot
  -- https://github.com/zbirenbaum/copilot.lua

  -- view syntax tree
  use('nvim-treesitter/playground')

  -- stab files for later
  use('theprimeagen/harpoon')

  -- big undo boi
  use ('mbbill/undotree')

  -- git but better
  use ('tpope/vim-fugitive')

  -- I need an LSP or I am scared
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'ray-x/go.nvim'},
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  },
  use('ray-x/go.nvim')
}
end)

