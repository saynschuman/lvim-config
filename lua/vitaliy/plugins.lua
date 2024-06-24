return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim", {
        -- only needed if you want to use the commands with "_with_window_picker" suffix
        's1n7ax/nvim-window-picker',
        tag = "v1.*",
        config = require("vitaliy.window-picker")
      }
    },
    config = require("vitaliy.neo-tree")
  }, {"catppuccin/nvim", name = "catppuccin"}, {
    "tpope/vim-fugitive",
    cmd = {
      "G", "Git", "Gdiffsplit", "Gread", "Gwrite", "Ggrep", "GMove", "GDelete",
      "GBrowse", "GRemove", "GRename", "Glgrep", "Gedit"
    },
    ft = {"fugitive"}
  }, {"folke/trouble.nvim", cmd = "TroubleToggle"}, {"szw/vim-maximizer"},
  {'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim'}, {
    "iamcco/markdown-preview.nvim",
    ft = {"markdown"},
    build = "cd app && yarn install"
  }, {'neoclide/coc.nvim', branch = 'release'}, {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup {keys = 'etovxqpdygfblzhckisuran'}
    end
  }, {
    'declancm/cinnamon.nvim',
    config = function()
      require('cinnamon').setup({
        extra_keymaps = true,
        override_keymaps = true,
        max_length = 100,
        scroll_limit = -1
      })
    end

  }, {"zbirenbaum/copilot.lua", cmd = "Copilot", event = "InsertEnter"}, {
    "zbirenbaum/copilot-cmp",
    after = {"copilot.lua"},
    config = function() require("copilot_cmp").setup() end
  }, {"jparise/vim-graphql"},
  {"briones-gabriel/darcula-solid.nvim", dependencies = "rktjmp/lush.nvim"},
  {"nvim-treesitter/playground", event = "Bufread"},
  {"folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {}}

  -- require('nvim-web-devicons').setup {
  --   override = {vue = {icon = "v", color = "#42b883", name = "Vue"}}
  -- }
}
