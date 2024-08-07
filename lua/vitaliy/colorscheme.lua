lvim.colorscheme = "darcula-solid"

require("catppuccin").setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  background = {
    -- :h background
    light = "latte",
    dark = "mocha"
  },
  transparent_background = true,
  show_end_of_buffer = false, -- show the '~' characters after the end of buffers
  term_colors = true,
  dim_inactive = {enabled = false, shade = "dark", percentage = 0.15},
  no_italic = false, -- Force no italic
  no_bold = false, -- Force no bold
  styles = {
    comments = {"italic"},
    conditionals = {"italic"},
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {}
  },
  color_overrides = {},
  highlight_overrides = {
    -- all = function(colors)
    --   return {["@comment"] = {fg = "#999999", style = {"italic"}}}
    -- end
  },
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
    notify = false,
    mini = false
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  }
})
