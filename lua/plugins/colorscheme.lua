return {
  {
    "tiagovla/tokyodark.nvim",
    lazy = false,
    priority = 1000,

    opts = {
      -- Keep editor background opaque.
      transparent_background = false,

      -- Theme brightness.
      -- 1.00 = default
      -- < 1.00 = darker
      -- > 1.00 = brighter
      gamma = 1.00,

      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        identifiers = { italic = true },
        functions = {},
        variables = {},
      },

      -- Apply the theme colors to :terminal.
      terminal_colors = true,

      -- Optional custom highlight overrides.
      highlights = function(colors)
        return {
          -- Cursor line
          CursorLine = {
            bg = colors.bg_highlight,
          },

          -- Line numbers
          LineNr = {
            fg = colors.comment,
          },

          CursorLineNr = {
            fg = colors.orange,
            bold = true,
          },

          -- Floating windows
          NormalFloat = {
            bg = colors.bg,
          },

          FloatBorder = {
            fg = colors.blue,
            bg = colors.bg,
          },

          -- Search
          Search = {
            fg = colors.bg,
            bg = colors.orange,
          },

          IncSearch = {
            fg = colors.bg,
            bg = colors.yellow,
          },

          -- Visual selection
          Visual = {
            bg = colors.bg_highlight,
          },
        }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyodark",
    },
  },
}
