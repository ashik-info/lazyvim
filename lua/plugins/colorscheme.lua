return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000, -- Load this before all other plugins
  config = function(_, opts)
    -- Initialize gruvbox with your options
    require("gruvbox").setup(opts)

    -- Set the background to dark and activate the colorscheme
    vim.o.background = "dark"
    vim.cmd([[colorscheme gruvbox]])
  end,
  opts = {
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
      strings = true,
      emphasis = true,
      comments = true,
      operators = false,
      folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors

    -- Contrast options: "hard", "medium" (default), or "soft"
    contrast = "medium",

    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
  },
}
