-- lvim.keys.normal_mode["<C-g>"] = ":Neotree float git_status<cr>"
lvim.keys.normal_mode["<C-b>"] = ":G blame<cr>"
lvim.keys.normal_mode["<C-j>"] = ":lua require('my_plugins.rest').exec()<cr>"
lvim.keys.normal_mode["<leader>ga"] = ":DiffviewFileHistory<cr>"
lvim.keys.normal_mode["<leader>gf"] = ":DiffviewFileHistory %<cr>"
lvim.keys.normal_mode["<leader>gq"] = ":DiffviewClose<cr>"
lvim.keys.normal_mode["<leader>m"] = ":MarkdownPreview<cr>"
lvim.keys.normal_mode["<C-[>"] = ":CocList diagnostics<CR>"
lvim.keys.normal_mode["<C-a>"] = ":CocCommand eslint.executeAutofix<CR>"
lvim.keys.normal_mode["<C-k>"] = ":HopWord<CR>"

-- Настройка ремапа в режиме визуального выбора
lvim.keys.visual_mode["<leader>p"] = "\"_dP"

vim.api.nvim_set_keymap("i", "<C-s>", "copilot#Accept('<CR>')", { silent = true, expr = true, script = true })
