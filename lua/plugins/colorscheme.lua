return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,

    opts = {
      -- Force VS Code Dark only.
      style = "dark",

      -- Opaque editor background.
      transparent = false,

      -- VS Code-like comments.
      italic_comments = true,

      -- Italic LSP inlay hints.
      italic_inlayhints = true,

      -- Underline links in markup/markdown.
      underline_links = true,

      -- Keep explorer background consistent.
      disable_nvimtree_bg = false,

      -- Apply theme colors to :terminal.
      terminal_colors = true,
    },

    config = function(_, opts)
      -- Prevent Neovim from selecting the light variant.
      vim.o.background = "dark"

      opts.style = "dark"

      require("vscode").setup(opts)
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
