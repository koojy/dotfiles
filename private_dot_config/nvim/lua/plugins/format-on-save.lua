local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

format_on_save.setup {
  formatter_by_ft = {
    typescript = formatters.prettierd,
    typescriptreact = formatters.prettierd,
    markdown = formatters.prettierd,
    yaml = formatters.lsp,
  }
}
