-- Горячие клавиши для нормального режима
lvim.keys.normal_mode["<C-b>"] = ":G blame<cr>"
lvim.keys.normal_mode["<C-j>"] = ":lua require('my_plugins.rest').exec()<cr>"
lvim.keys.normal_mode["<leader>ga"] = ":DiffviewFileHistory<cr>"
lvim.keys.normal_mode["<leader>gf"] = ":DiffviewFileHistory %<cr>"
lvim.keys.normal_mode["<leader>gq"] = ":DiffviewClose<cr>"
lvim.keys.normal_mode["<leader>m"] = ":MarkdownPreview<cr>"
lvim.keys.normal_mode["<C-[>"] = ":CocList diagnostics<CR>"
lvim.keys.normal_mode["<C-a>"] = ":CocCommand eslint.executeAutofix<CR>"
lvim.keys.normal_mode["<C-k>"] = ":HopWord<CR>"
-- lvim.keys.normal_mode["<C-s>"] = "copilot#Accept<CR>"
lvim.keys.normal_mode["<C-s>"] = ":VCoolor<cr>"
-- lvim.keys.normal_mode["<leader>r"] = ":CccConvert<cr>"
lvim.keys.normal_mode["<C-t>"] = ":CccHighlighterToggle<cr>"

-- Настройка ремапа в режиме визуального выбора
lvim.keys.visual_mode["<leader>p"] = "\"_dP"

-- Горячие клавиши для режима вставки
vim.api.nvim_set_keymap("i", "<C-f>", "copilot#Accept('<CR>')",
  { silent = true, expr = true, script = true })

-- Горячая клавиша для форматирования (leader + l + f)
vim.cmd(
  "command! F lua vim.lsp.buf.format({ formatting_options = { tabSize = 2, insertSpaces = true } })")

vim.cmd("command! -nargs=0 R LvimReload")
