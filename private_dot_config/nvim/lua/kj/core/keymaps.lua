local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

map("n", "<Space>", "", {})

map("n", "<C-H>", "<C-W><C-H>", opts)
map("n", "<C-J>", "<C-W><C-J>", opts)
map("n", "<C-K>", "<C-W><C-K>", opts)
map("n", "<C-L>", "<C-W><C-L>", opts)

map("i", "jj", "<Esc>", opts)

map("n", ";", ":", opts)
map("n", ":", ";", opts)

map("n", "<Leader>w", ":w<CR>", opts)
map("n", "<Leader>q", ":q<CR>", opts)
-- map("n", "L", "gt", opts)
-- map("n", "H", "gT", opts)

map("v", "y", '"+y', opts)
map("v", "p", '"+p', opts)

map("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
map("n", "<C-o>", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
