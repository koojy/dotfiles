local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- require("sidebar-nvim").setup {}

map('n', '<C-S>', '<cmd>lua require("sidebar-nvim").toggle()<cr>', opts)
