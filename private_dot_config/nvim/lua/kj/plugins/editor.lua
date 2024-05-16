return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      require("neo-tree").setup({
        window = {
          mappings = {
            ["b"] = {
              "toggle_node",
              nowait = false,
            },
          },
        },
      })

      map("n", "<C-e>", ":Neotree toggle<Return>", opts)
    end,
  },
  {
    "folke/trouble.nvim",
    config = function()
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      require("trouble").setup({})

      map("n", "<Leader>xx", "<cmd>TroubleToggle<cr>", opts)
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-frecency.nvim",
      "folke/trouble.nvim",
    },
    config = function()
      local actions = require("telescope.actions")
      local trouble = require("trouble")
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<esc>"] = actions.close,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
              ["<vim_lsp.intelephense.setupc-t>"] = trouble.open_with_troubl,
            },
            n = {
              ["<c-t>"] = trouble.open_with_trouble,
            },
          },
        },
      })

      map("n", "<Leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
      map("n", "<Leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
    end,
  },
  {
    "nvim-zh/colorful-winsep.nvim",
    event = { "WinNew" },
    opts = {},
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<Leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {},
    keys = {
      { "<Leader>tt", "<cmd>ToggleTerm<cr>", desc = "ToggleTerm" },
    },
  },
}
