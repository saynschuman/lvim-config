local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
  {
    command = "prettier",
    filetypes = {"typescript", "typescriptreact"}
  }, {
    command = "lua-format",
    filetypes = {"lua"},
    extra_args = {"--indent-width=2"}
  }
}
