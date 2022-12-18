local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

require("neo-tree").setup {
	window = {
		mappings = {
			["b"] = { 
				"toggle_node", 
				nowait = false,
			}
		}
	}
}

map('n', '<C-e>', '<cmd> Neotree<cr>', opts)
