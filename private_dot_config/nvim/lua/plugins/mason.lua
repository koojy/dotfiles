local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')
local nvim_lsp = require('lspconfig')

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

mason_lspconfig.setup({
  automatic_installation = true,
})

mason_lspconfig.setup_handlers {
  function(server_name)
    local opts = {
      -- capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
    }

    opts.on_attach = function(_, bufnr)
      local bufopts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
      vim.keymap.set('n', 'gtD', vim.lsp.buf.type_definition, bufopts)
      vim.keymap.set('n', 'p', vim.lsp.buf.format, bufopts)
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
      -- vim.keymap.set("n", "gsd", ":split | lua vim.lsp.buf.definition()", bufopts)
      -- vim.keymap.set("n", "gvd", ":vsplit | lua vim.lsp.buf.definition()", bufopts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts) -- 参照しているファイルを開く
    end

    nvim_lsp[server_name].setup(opts)
  end
}
