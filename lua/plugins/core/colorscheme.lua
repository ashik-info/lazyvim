return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,

    opts = {
      -- Hard contrast = darkest Gruvbox background
      contrast = "hard",

      -- Keep background opaque
      transparent_mode = false,

      -- Syntax styling
      italic = {
        strings = false,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },

      bold = false,
      inverse = true,
      undercurl = true,
      underline = true,
      strikethrough = true,

      -- Terminal colors
      terminal_colors = true,

      -- Dim inactive windows if needed
      dim_inactive = false,
    },

    config = function(_, opts)
      vim.o.background = "dark"

      require("gruvbox").setup(opts)
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
