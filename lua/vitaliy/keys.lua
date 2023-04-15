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

-- SMOOTH SCROLLING
-- DEFAULT_KEYMAPS:

-- Half-window movements:
lvim.keys.normal_mode["<C-u>"] = "<Cmd>lua Scroll('<C-u>', 1, 1)<CR>"
lvim.keys.visual_mode["<C-u>"] = "<Cmd>lua Scroll('<C-u>', 1, 1)<CR>"
lvim.keys.normal_mode["<C-d>"] = "<Cmd>lua Scroll('<C-d>', 1, 1)<CR>"
lvim.keys.visual_mode["<C-d>"] = "<Cmd>lua Scroll('<C-d>', 1, 1)<CR>"

-- Page movements:
-- lvim.keys.normal_mode["<C-b>"] = "<Cmd>lua Scroll('<C-b>', 1, 1)<CR>"
-- lvim.keys.visual_mode["<C-b>"] = "<Cmd>lua Scroll('<C-b>', 1, 1)<CR>"
lvim.keys.normal_mode["<C-f>"] = "<Cmd>lua Scroll('<C-f>', 1, 1)<CR>"
lvim.keys.visual_mode["<C-f>"] = "<Cmd>lua Scroll('<C-f>', 1, 1)<CR>"
lvim.keys.normal_mode["<PageUp>"] = "<Cmd>lua Scroll('<C-b>', 1, 1)<CR>"
lvim.keys.visual_mode["<PageUp>"] = "<Cmd>lua Scroll('<C-b>', 1, 1)<CR>"
lvim.keys.normal_mode["<PageDown>"] = "<Cmd>lua Scroll('<C-f>', 1, 1)<CR>"
lvim.keys.visual_mode["<PageDown>"] = "<Cmd>lua Scroll('<C-f>', 1, 1)<CR>"

-- EXTRA_KEYMAPS:

-- Start/end of file and line number movements:
lvim.keys.normal_mode["gg"] = "<Cmd>lua Scroll('gg')<CR>"
lvim.keys.visual_mode["gg"] = "<Cmd>lua Scroll('gg')<CR>"
lvim.keys.normal_mode["G"] = "<Cmd>lua Scroll('G', 0, 1)<CR>"
lvim.keys.visual_mode["G"] = "<Cmd>lua Scroll('G', 0, 1)<CR>"

-- Start/end of line:
lvim.keys.normal_mode["0"] = "<Cmd>lua Scroll('0')<CR>"
lvim.keys.visual_mode["0"] = "<Cmd>lua Scroll('0')<CR>"
lvim.keys.normal_mode["^"] = "<Cmd>lua Scroll('^')<CR>"
lvim.keys.visual_mode["^"] = "<Cmd>lua Scroll('^')<CR>"
lvim.keys.normal_mode["$"] = "<Cmd>lua Scroll('$', 0, 1)<CR>"
lvim.keys.visual_mode["$"] = "<Cmd>lua Scroll('$', 0, 1)<CR>"

-- Paragraph movements:
lvim.keys.normal_mode["{"] = "<Cmd>lua Scroll('{')<CR>"
lvim.keys.visual_mode["{"] = "<Cmd>lua Scroll('{')<CR>"
lvim.keys.normal_mode["}"] = "<Cmd>lua Scroll('}')<CR>"
lvim.keys.visual_mode["}"] = "<Cmd>lua Scroll('}')<CR>"

-- Previous/next search result:
lvim.keys.normal_mode["n"] = "<Cmd>lua Scroll('n', 1)<CR>"
lvim.keys.normal_mode["N"] = "<Cmd>lua Scroll('N', 1)<CR>"
lvim.keys.normal_mode["*"] = "<Cmd>lua Scroll('', 1)<CR>"
lvim.keys.normal_mode["#"] = "<Cmd>lua Scroll('#', 1)<CR>"
lvim.keys.normal_mode["g"] = "<Cmd>lua Scroll('g*', 1)<CR>"
lvim.keys.normal_mode["g#"] = "<Cmd>lua Scroll('g#', 1)<CR>"

-- Previous/next cursor location:
lvim.keys.normal_mode["<C-o>"] = "<Cmd>lua Scroll('<C-o>', 1)<CR>"
lvim.keys.normal_mode["<C-i>"] = "<Cmd>lua Scroll('1<C-i>', 1)<CR>"

-- Screen scrolling:
lvim.keys.normal_mode["zz"] = "<Cmd>lua Scroll('zz', 0, 1)<CR>"
lvim.keys.normal_mode["zt"] = "<Cmd>lua Scroll('zt', 0, 1)<CR>"
lvim.keys.normal_mode["zb"] = "<Cmd>lua Scroll('zb', 0, 1)<CR>"
lvim.keys.normal_mode["z."] = "<Cmd>lua Scroll('z.', 0, 1)<CR>"
lvim.keys.normal_mode["z<CR>"] = "<Cmd>lua Scroll('zt^', 0, 1)<CR>"
lvim.keys.normal_mode["z-"] = "<Cmd>lua Scroll('z-', 0, 1)<CR>"
lvim.keys.normal_mode["z^"] = "<Cmd>lua Scroll('z^', 0, 1)<CR>"
lvim.keys.normal_mode["z+"] = "<Cmd>lua Scroll('z+', 0, 1)<CR>"
lvim.keys.normal_mode["<C-y>"] = "<Cmd>lua Scroll('<C-y>', 0, 1)<CR>"
lvim.keys.normal_mode["<C-e>"] = "<Cmd>lua Scroll('<C-e>', 0, 1)<CR>"

-- Horizontal screen scrolling:
lvim.keys.normal_mode["zH"] = "<Cmd>lua Scroll('zH')<CR>"
lvim.keys.normal_mode["zL"] = "<Cmd>lua Scroll('zL')<CR>"
lvim.keys.normal_mode["zs"] = "<Cmd>lua Scroll('zs')<CR>"
lvim.keys.normal_mode["ze"] = "<Cmd>lua Scroll('ze')<CR>"
lvim.keys.normal_mode["zh"] = "<Cmd>lua Scroll('zh', 0, 1)<CR>"
lvim.keys.normal_mode["zl"] = "<Cmd>lua Scroll('zl', 0, 1)<CR>"

-- EXTENDED_KEYMAPS:

-- Up/down movements:
lvim.keys.normal_mode["k"] = "<Cmd>lua Scroll('k', 0, 1)<CR>"
lvim.keys.visual_mode["k"] = "<Cmd>lua Scroll('k', 0, 1)<CR>"
lvim.keys.normal_mode["j"] = "<Cmd>lua Scroll('j', 0, 1)<CR>"
lvim.keys.visual_mode["j"] = "<Cmd>lua Scroll('j', 0, 1)<CR>"
lvim.keys.normal_mode["<Up>"] = "<Cmd>lua Scroll('k', 0, 1)<CR>"
lvim.keys.visual_mode["<Up>"] = "<Cmd>lua Scroll('k', 0, 1)<CR>"
lvim.keys.normal_mode["<Down>"] = "<Cmd>lua Scroll('j', 0, 1)<CR>"
lvim.keys.visual_mode["<Down>"] = "<Cmd>lua Scroll('j', 0, 1<CR>"

-- Left/right movements:
lvim.keys.normal_mode["h"] = "<Cmd>lua Scroll('h', 0, 1)<CR>"
lvim.keys.visual_mode["h"] = "<Cmd>lua Scroll('h', 0, 1)<CR>"
lvim.keys.normal_mode["l"] = "<Cmd>lua Scroll('l', 0, 1)<CR>"
lvim.keys.visual_mode["l"] = "<Cmd>lua Scroll('l', 0, 1)<CR>"
lvim.keys.normal_mode["<Left>"] = "<Cmd>lua Scroll('h', 0, 1)<CR>"
lvim.keys.visual_mode["<Left>"] = "<Cmd>lua Scroll('h', 0, 1)<CR>"
lvim.keys.normal_mode["<Right>"] = "<Cmd>lua Scroll('l', 0, 1)<CR>"
lvim.keys.visual_mode["<Right>"] = "<Cmd>lua Scroll('l', 0, 1)<CR>"

-- SCROLL_WHEEL_KEYMAPS:

lvim.keys.normal_mode["<ScrollWheelUp>"] =
    "<Cmd>lua Scroll('<ScrollWheelUp>')<CR>"
lvim.keys.visual_mode["<ScrollWheelUp>"] =
    "<Cmd>lua Scroll('<ScrollWheelUp>')<CR>"
lvim.keys.normal_mode["<ScrollWheelDown>"] =
    "<Cmd>lua Scroll('<ScrollWheelDown>')<CR>"
lvim.keys.visual_mode["<ScrollWheelDown>"] =
    "<Cmd>lua Scroll('<ScrollWheelDown>')<CR>"

-- LSP_KEYMAPS:

-- LSP go-to-definition:
lvim.keys.normal_mode["gd"] = "<Cmd>lua Scroll('definition')<CR>"

-- LSP go-to-declaration:
lvim.keys.normal_mode["gD"] = "<Cmd>lua Scroll('declaration')<CR>"

-- Настройка ремапа в режиме визуального выбора
lvim.keys.visual_mode["<leader>p"] = "\"_dP"
