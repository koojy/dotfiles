local lspconfig = require("lspconfig")

lspconfig.cssls.setup {}

lspconfig.tsserver.setup {
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

lspconfig.spectral.setup {}

local prettier = {
  formatCommand = "npx prettier --stdin-filepath ${INPUT}",
  formatStdin = true
}

-- lspconfig.efm.setup {
--   filetypes = {
--     "lua",
--     "markdown",
--     'javascript',
--     'javascriptreact',
--     'typescript',
--     'typescriptreact'
--   },
--   init_options = {
--     documentFormatting = true,
--   },
--   settings = {
--     rootMarkers = {
--       ".git/",
--     },
--     languages = {
--       lua = {
--         {
--           formatCommand = "stylua --color Never --config-path ~/.config/.stylua.toml -",
--         },
--         {
--           lintCommand = "luacheck --no-color --quiet --config ~/.config/.luacheckrc -",
--           lintFormats = { "%f:%l:%c: %m" },
--         },
--       },
--       markdown = {
--         {
--           lintIgnoreExitCode = true,
--           lintCommand =
--           [[npx textlint -f json ${INPUT} | jq -r '.[] | .filePath as $filePath | .messages[] | "1;\($filePath):\(.line):\(.column):\n2;\(.message | split("\n")[0])\n3;[\(.ruleId)]"']],
--           lintFormats = { '%E1;%E%f:%l:%c:', '%C2;%m', '%C3;%m%Z' },
--         }
--       },
--       javascript = { { formatCommand = 'prettier --stdin-filepath ${INPUT}', formatStdin = true } },
--       javascriptreact = { { formatCommand = 'prettier --stdin-filepath ${INPUT}', formatStdin = true } },
--       typescript = { { formatCommand = 'prettier --stdin-filepath ${INPUT}', formatStdin = true } },
--       typescriptreact = { prettier },
--     },
--   },
-- }

lspconfig.jsonls.setup {
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
      validate = { enable = true },
    },
  },
}

lspconfig.prismals.setup {}

lspconfig.astro.setup {}
