local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"

  local out = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    lazyrepo,
    lazypath,
  })

  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})

    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -------------------------------------------------------------------------
    -- 1. LazyVim core must be first
    -------------------------------------------------------------------------

    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
    },

    -------------------------------------------------------------------------
    -- 2. LazyVim extras must come after the core import
    -------------------------------------------------------------------------

    {
      import = "lazyvim.plugins.extras.lang.typescript",
    },

    {
      import = "lazyvim.plugins.extras.lang.json",
    },

    {
      import = "lazyvim.plugins.extras.editor.telescope",
    },

    {
      import = "lazyvim.plugins.extras.ui.mini-starter",
    },

    -------------------------------------------------------------------------
    -- 3. Custom plugin specs must be last
    -------------------------------------------------------------------------

    {
      import = "plugins",
    },
  },

  defaults = {
    -- Only LazyVim plugins are lazy-loaded by default.
    -- Custom plugins load during startup unless configured otherwise.
    lazy = false,

    -- Use the latest plugin commit instead of potentially outdated releases.
    version = false,
  },

  install = {
    colorscheme = {
      "gruvbox",
      "tokyonight",
    },
  },

  checker = {
    enabled = true,
    notify = false,
  },

  performance = {
    rtp = {
      disabled_plugins = {
        -- "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        -- "tarPlugin",
        -- "tohtml",
        -- "tutor",
        -- "zipPlugin",
      },
    },
  },
})
