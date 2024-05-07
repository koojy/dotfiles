local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

format_on_save.setup {
  formatter_by_ft = {
    typescript = formatters.prettierd,
    markdown = formatters.prettierd,
    yaml = formatters.lsp,
    lua = formatters.lsp,
    -- typescriptreact = {
    --   formatters.if_file_exists({
    --     pattern = { ".prettierrc", ".prettierrc.*", "prettier.config.*" },
    --     formatter = formatters.prettierd,
    --   }),
    -- }
  }
}
