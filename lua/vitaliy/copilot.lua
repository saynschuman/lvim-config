local ok, copilot = pcall(require, "copilot")
if not ok then
  return
end

copilot.setup {
  suggestion = {
    keymap = {
      accept = "<C-l>",
      next = "<C-j>",
      prev = "<C-k>",
      dismiss = "<C-h>",
    },
  },
}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<C-s>", "<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<CR>", opts)
