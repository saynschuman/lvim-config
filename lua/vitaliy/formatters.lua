local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
  {
    command = "prettier",
    filetypes = {"typescript", "typescriptreact", "sass", "javascript", "vue", "php"}
  }, {
    command = "lua-format",
    filetypes = {"lua"},
    extra_args = {"--indent-width=2"}
  }
}
