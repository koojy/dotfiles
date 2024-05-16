return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig",
			"neovim/nvim-lspconfig",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
		config = function(_, opts)
			local mason = require("mason")
			local mason_lspconfig = require("mason-lspconfig")
			local nvim_lsp = require("lspconfig")
			local mason_tool_installer = require("mason-tool-installer")

			mason.setup(opts)

			mason_lspconfig.setup({
				automatic_installation = true,
			})

			mason_lspconfig.setup_handlers({
				function(server_name)
					local server_opts = {
						-- capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
					}

					opts.on_attach = function(_, bufnr)
						local bufopts = { noremap = true, silent = true, buffer = bufnr }

						vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
						vim.keymap.set("n", "gtD", vim.lsp.buf.type_definition, bufopts)
						vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
						vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
						vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
						vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts) -- 参照しているファイルを開く
					end

					nvim_lsp[server_name].setup(server_opts)
				end,
			})

			mason_tool_installer.setup({
				ensure_installed = {
					"prettier", -- prettier formatter
					"stylua", -- lua formatter
					"isort", -- python formatter
					"black", -- python formatter
					"pylint", -- python linter
					"eslint_d", -- js linter
				},
			})
		end,
	},
	{
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
				-- jsonls = {
				-- 	settings = {
				-- 		json = {
				-- 			schemas = require("schemastore").json.schemas(),
				-- 			validate = { enable = true },
				-- 		},
				-- 	},
				-- },
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
	},
}
