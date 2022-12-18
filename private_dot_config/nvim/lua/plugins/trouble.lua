local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

require("trouble").setup {}

map("n", "<Leader>xx", "<cmd>TroubleToggle<cr>", opts)
