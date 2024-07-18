local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
  {
    command = "prettier",
    filetypes = {
      "typescript", "typescriptreact", "sass", "javascript", "vue", "php",
      "scala"
    }
  }, {
    command = "lua-format",
    filetypes = {"lua", "scala"},
    extra_args = {"--indent-width=2"}
  }
}
