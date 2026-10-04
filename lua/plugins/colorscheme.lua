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

-- return {
--   {
--     "tiagovla/tokyodark.nvim",
--     lazy = false,
--     priority = 1000,
--
--     opts = {
--       -- Keep editor background opaque.
--       transparent_background = false,
--
--       -- Theme brightness.
--       -- 1.00 = default
--       -- < 1.00 = darker
--       -- > 1.00 = brighter
--       gamma = 1.00,
--
--       styles = {
--         comments = { italic = true },
--         keywords = { italic = true },
--         identifiers = { italic = true },
--         functions = {},
--         variables = {},
--       },
--
--       -- Apply the theme colors to :terminal.
--       terminal_colors = true,
--
--       -- Optional custom highlight overrides.
--       highlights = function(colors)
--         return {
--           -- Cursor line
--           CursorLine = {
--             bg = colors.bg_highlight,
--           },
--
--           -- Line numbers
--           LineNr = {
--             fg = colors.comment,
--           },
--
--           CursorLineNr = {
--             fg = colors.orange,
--             bold = true,
--           },
--
--           -- Floating windows
--           NormalFloat = {
--             bg = colors.bg,
--           },
--
--           FloatBorder = {
--             fg = colors.blue,
--             bg = colors.bg,
--           },
--
--           -- Search
--           Search = {
--             fg = colors.bg,
--             bg = colors.orange,
--           },
--
--           IncSearch = {
--             fg = colors.bg,
--             bg = colors.yellow,
--           },
--
--           -- Visual selection
--           Visual = {
--             bg = colors.bg_highlight,
--           },
--         }
--       end,
--     },
--   },
--
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "tokyodark",
--     },
--   },
-- }
