local null_ls = require("null-ls")

local lsp_formatting = function(bufnr)
	vim.lsp.buf.format({
		filter = function(client)
			return client.name ~= "tsserver"
		end,
		bufnr = bufnr,
	})
end

local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      group = augroup,
      buffer = bufnr,
      callback = function()
        lsp_formatting(bufnr)
      end,
      once = false,
    })
  end
end

null_ls.setup({
  sources = {
    -- null_ls.builtins.diagnostics.twigcs,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.textlint.with {
      filetypes = { "markdown" },
      prefer_local = "node_modules/.bin"
    },
    null_ls.builtins.formatting.prettier.with {
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html", "json", "jsonc", "yaml", "markdown", "markdown.mdx", "graphql", "handlebars", "twig" }
    },
    null_ls.builtins.diagnostics.editorconfig_checker.with {
      command = "editorconfig-checker"
    }
  },
  on_attach = on_attach
})
