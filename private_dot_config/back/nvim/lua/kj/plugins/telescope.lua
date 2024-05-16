return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-telescope/telescope-frecency.nvim',
    'folke/trouble.nvim',
  },
  config = function()
    local actions = require("telescope.actions")
    local trouble = require("trouble")
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    require('telescope').setup({
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
          }
        },
      },
    })

    map("n", "<Leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
    map("n", "<Leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
  end
}
