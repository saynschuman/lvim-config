return {
 {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      {
        -- only needed if you want to use the commands with "_with_window_picker" suffix
        's1n7ax/nvim-window-picker',
        tag = "v1.*",
        config = require("vitaliy.window-picker") 
      }
    },
    config = require("vitaliy.neo-tree")
 },
 { 
    "catppuccin/nvim",
    name = "catppuccin" 
 },
}
