vim.cmd[[packadd packer.nvim]]

require'packer'.startup(function()
  -- ========================
  -- package manager
  -- ========================
  use{'wbthomason/packer.nvim', opt = true}

  -- ========================
  -- theme
  -- ========================
  use{'EdenEast/nightfox.nvim'}

  -- ========================
  -- fizzy
  -- ========================
  use{
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require"telescope".load_extension("frecency")
    end,
    requires = {"tami5/sqlite.lua"}
  }

  -- ========================
  -- fizzy
  -- ========================
  use("neovim/nvim-lspconfig")

  use {
    "williamboman/mason.nvim", 
    build = ":MasonUpdate"
  }
  use { "williamboman/mason-lspconfig" }

  use("weilbith/nvim-lsp-smag")

  use('MunifTanjim/prettier.nvim')

  use { "https://git.sr.ht/~whynothugo/lsp_lines.nvim" }

  use { "elentok/format-on-save.nvim" }

  -- ========================
  -- appearance
  -- ========================
  use("j-hui/fidget.nvim")

  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("onsails/lspkind.nvim")

  use { "L3MON4D3/LuaSnip" }

  use { "nvim-tree/nvim-web-devicons" }

  -- ========================
  -- treesitter
  -- ========================
  use("nvim-treesitter/nvim-treesitter")
  use("nvim-treesitter/nvim-treesitter-context")
  use("p00f/nvim-ts-rainbow")
  use("JoosepAlviste/nvim-ts-context-commentstring")
  use("haringsrob/nvim_context_vt")
  use("m-demare/hlargs.nvim")
  use("eirabben/tree-sitter-twig")

  use("nelsyeung/twig.vim") -- required?

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

  use("lukas-reineke/indent-blankline.nvim")

  use { "numToStr/Comment.nvim" }

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }

  -- ========================
  -- git
  -- ========================
  use { "TimUntersberger/neogit" }

  use("hotwatermorning/auto-git-diff")

  use {
    'phaazon/hop.nvim',
    branch = 'v2',
  }

  use("gpanders/editorconfig.nvim")

  use("RRethy/vim-illuminate")

  use("petertriho/nvim-scrollbar")

  use("norcalli/nvim-colorizer.lua")

  use("williamboman/nvim-lsp-installer")

  use { "thinca/vim-quickrun" }

  use { "github/copilot.vim" }
end)
