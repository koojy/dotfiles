vim.cmd[[packadd packer.nvim]]

require'packer'.startup(function()
  use{'wbthomason/packer.nvim', opt = true}

  use{'EdenEast/nightfox.nvim'}

  use{
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
	use {
		"nvim-telescope/telescope-frecency.nvim",
		config = function()
			require"telescope".load_extension("frecency")
		end,
		requires = {"tami5/sqlite.lua"}
	}

  -- use{'sidebar-nvim/sidebar.nvim'}

  use("neovim/nvim-lspconfig")
  use("williamboman/nvim-lsp-installer")
  use("weilbith/nvim-lsp-smag")
  use("folke/lsp-colors.nvim")
  use("j-hui/fidget.nvim")

  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
	use("onsails/lspkind.nvim")

	use { "L3MON4D3/LuaSnip" }

  use("nvim-treesitter/nvim-treesitter")
  use("nvim-treesitter/nvim-treesitter-context")
  use("p00f/nvim-ts-rainbow")
  use("JoosepAlviste/nvim-ts-context-commentstring")
  use("haringsrob/nvim_context_vt")
  use("m-demare/hlargs.nvim")
  use("eirabben/tree-sitter-twig")
  use("nelsyeung/twig.vim")

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

  use("windwp/nvim-ts-autotag")

	use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  }

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use {
		"SmiteshP/nvim-navic",
		requires = "neovim/nvim-lspconfig"
	}

	use("lukas-reineke/indent-blankline.nvim")

	use("jose-elias-alvarez/null-ls.nvim")

	use('MunifTanjim/prettier.nvim')

	use { "numToStr/Comment.nvim" }

	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	}

	use { "TimUntersberger/neogit" }

	use {
		'phaazon/hop.nvim',
		branch = 'v2',
	}

	use("gpanders/editorconfig.nvim")

	use("RRethy/vim-illuminate")
 
	use("petertriho/nvim-scrollbar")

	use("norcalli/nvim-colorizer.lua")

	-- use("rhysd/committia.vim")
	use("hotwatermorning/auto-git-diff")
end)
