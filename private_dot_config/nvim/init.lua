local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local is_vscode = vim.g.vscode == 1

function merge_tables(t1, t2)
    local merged = {}
    for _, v in ipairs(t1) do
        table.insert(merged, v)
    end
    for _, v in ipairs(t2) do
        table.insert(merged, v)
    end
    return merged
end

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("mappings")

if not is_vscode then
  require("lazy").setup({
    'EdenEast/nightfox.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-frecency.nvim',
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',
    'jose-elias-alvarez/null-ls.nvim',
    'nvimtools/none-ls.nvim',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig',
    'weilbith/nvim-lsp-smag',
    'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    'elentok/format-on-save.nvim',
    'j-hui/fidget.nvim',
    'SmiteshP/nvim-navic',
    'nvim-lualine/lualine.nvim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'onsails/lspkind.nvim',
    'nvimdev/lspsaga.nvim',
    'L3MON4D3/LuaSnip',
    'nvim-tree/nvim-web-devicons',
    'glench/vim-jinja2-syntax',
    'nvim-zh/colorful-winsep.nvim',
    {
      'nvim-treesitter/nvim-treesitter',
      build = "TSUpdate",
    },
    'nvim-treesitter/nvim-treesitter-context',
    'JoosepAlviste/nvim-ts-context-commentstring',
    'haringsrob/nvim_context_vt',
    'm-demare/hlargs.nvim',
    'eirabben/tree-sitter-twig',
    'nelsyeung/twig.vim',
    'windwp/nvim-autopairs',
    'windwp/nvim-ts-autotag',
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      }
    },
    'lukas-reineke/indent-blankline.nvim',
    'numToStr/Comment.nvim',
    'folke/trouble.nvim',
    'TimUntersberger/neogit',
    'hotwatermorning/auto-git-diff',
    'phaazon/hop.nvim',
    'gpanders/editorconfig.nvim',
    'RRethy/vim-illuminate',
    'petertriho/nvim-scrollbar',
    'norcalli/nvim-colorizer.lua',
    'thinca/vim-quickrun',
    'github/copilot.vim',
    'b0o/schemastore.nvim',
    'dhruvasagar/vim-table-mode',
    'akinsho/toggleterm.nvim'
  })

  require("options")
  require("plugins")

  -- require("packer_init")
  require("autocmd")
  require("options")

  require("nvim-treesitter.configs").setup {
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    ensure_installed = {
      -- "vue",
      -- "typescript",
      -- "tsx",
      -- "php",
      -- "css",
      -- "scss",
      -- "html",
      -- "astro",
      "markdown",
      "markdown_inline",
    },
    autotag = {
      enable = true,
    }
  }

  vim.treesitter.language.register('markdown', 'mdx')
  vim.treesitter.language.register('markdown', 'mdoc')
end
