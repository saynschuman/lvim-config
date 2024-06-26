-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous
  }
}

lvim.builtin.telescope.defaults.path_display = {"absolute"}

local common_layout_config = {
  layout_config = {
    height = 0.99,
    width = 0.99,
    preview_cutoff = 120,
    preview_width = 0.6,
    prompt_position = "top"
  },
  layout_strategy = "horizontal"
}

-- Apply common layout config and specific path_display to each picker
lvim.builtin.telescope.pickers.find_files = vim.tbl_extend("force", common_layout_config, {path_display = {"absolute"}})
lvim.builtin.telescope.pickers.live_grep = vim.tbl_extend("force", common_layout_config, {path_display = {"absolute"}})
lvim.builtin.telescope.pickers.git_status = vim.tbl_extend("force", common_layout_config, {path_display = {"smart"}})
lvim.builtin.telescope.pickers.grep_string = vim.tbl_extend("force", common_layout_config, {path_display = {"absolute"}})
lvim.builtin.telescope.pickers.buffers = vim.tbl_extend("force", common_layout_config, {path_display = {"absolute"}})
lvim.builtin.telescope.pickers.help_tags = vim.tbl_extend("force", common_layout_config, {path_display = {"absolute"}})
lvim.builtin.telescope.pickers.oldfiles = vim.tbl_extend("force", common_layout_config, {path_display = {"smart"}})

