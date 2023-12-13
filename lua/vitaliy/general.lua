lvim.builtin.nvimtree.active = false
vim.diagnostic.config({virtual_text = false})
vim.opt.relativenumber = true
lvim.builtin.treesitter.playground = true
lvim.builtin.treesitter.autotag.enable = true

lvim.builtin.which_key.mappings["T"]["h"] = {
  "<cmd>TSHighlightCapturesUnderCursor<cr>", "Highlight"
}
