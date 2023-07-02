
vim.cmd [[packadd packer.nvim]]

-- My extensions 
return require('packer').startup(function(use)
  -- packager manager
  use 'wbthomason/packer.nvim'

  -- telescope to search
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- scheme color
  use { "catppuccin/nvim", as = "catppuccin" }

  -- tree-sitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  -- harpon tabs
  use('theprimeagen/harpoon')

  -- undotree
  use('mbbill/undotree')

  -- fugitive
  use('tpope/vim-fugitive')

  -- LSP
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

  -- vim-be-good
  use('ThePrimeagen/vim-be-good')

  -- comments
  use('numToStr/Comment.nvim')
end)
