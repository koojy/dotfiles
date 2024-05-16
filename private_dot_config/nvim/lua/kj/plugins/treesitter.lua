return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = "TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-context",
    },
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        ensure_installed = {
          "vue",
          "typescript",
          "tsx",
          "php",
          "css",
          "scss",
          "html",
          "astro",
        },
        autotag = {
          enable = true,
        },
      })
    end,
  },
}
