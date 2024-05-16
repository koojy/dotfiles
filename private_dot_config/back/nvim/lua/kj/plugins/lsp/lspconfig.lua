return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"b0o/schemastore.nvim",
	},
	opts = {
		inaly_hints = { enabled = true },
		servers = {
			cssls = {},
			spectral = {},
			prismals = {},
			astro = {},
			tsserver = {
				filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
				cmd = { "typescript-language-server", "--stdio" },
				settings = {
					typescript = {
						inlayHints = {
							includeInlayParameterNameHints = "literal",
							includeInlayParameterNameHintsWhenArgumentMatchesName = false,
							includeInlayFunctionParameterTypeHints = true,
							includeInlayVariableTypeHints = false,
							includeInlayPropertyDeclarationTypeHints = true,
							includeInlayFunctionLikeReturnTypeHints = true,
							includeInlayEnumMemberValueHints = true,
						},
					},
				},
			},
			jsonls = {
				settings = {
					json = {
						schemas = require("schemastore").json.schemas(),
						validate = { enable = true },
					},
				},
			},
		},
		-- config = function()
		-- 	local lspconfig = require("lspconfig")

		-- 	lspconfig.jsonls.setup({
		-- 		settings = {
		-- 			json = {
		-- 				schemas = require("schemastore").json.schemas(),
		-- 				validate = { enable = true },
		-- 			},
		-- 		},
		-- 	})
		-- end,
	},
}
