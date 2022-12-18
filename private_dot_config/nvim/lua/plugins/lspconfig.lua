local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require("lspconfig")
local navic = require("nvim-navic")

lspconfig['tsserver'].setup {
	capabilities = capabilities
}

lspconfig['volar'].setup {
	capabilities = capabilities
}

lspconfig.clangd.setup({
	on_attach = function(client, bufnr)
		navic.attach(client, bufnr)
	end
})

lspconfig.gopls.setup({
	on_attach = function(client)
		require("illuminate").on_attach(client)
	end
})

lspconfig.intelephense.setup({
	on_attach = on_attach
})

lspconfig.emmet_ls.setup({
    capabilities = capabilities,
    filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
    init_options = {
      html = {
				command = "editorconfig-checker",
        options = {
          ["bem.enabled"] = true,
        },
      },
    }
})

lspconfig.eslint.setup {}
