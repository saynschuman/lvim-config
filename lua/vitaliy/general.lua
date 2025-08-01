lvim.builtin.nvimtree.active = false
vim.diagnostic.config({virtual_text = false})
vim.opt.relativenumber = true
lvim.builtin.treesitter.playground = true
lvim.builtin.treesitter.autotag.enable = true

-- disable all cursor‐shape changes, terminal will use свой дефолтный (обычно блок)
-- vim.opt.guicursor = ""

lvim.builtin.which_key.mappings["T"]["h"] = {
  "<cmd>TSHighlightCapturesUnderCursor<cr>", "Highlight"
}
