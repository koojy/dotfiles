return {
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
}
