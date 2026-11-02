return {
  {
    "nvim-flutter/flutter-tools.nvim",
    ft = "dart",
    cmd = { "FlutterCommands", "FlutterRun", "FlutterDevices", "FlutterEmulators" },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local ok, blink = pcall(require, "blink.cmp")
      if ok then
        capabilities = blink.get_lsp_capabilities(capabilities)
      end
      return { lsp = { capabilities = capabilities } }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      if not vim.tbl_contains(opts.ensure_installed, "dart") then
        table.insert(opts.ensure_installed, "dart")
      end
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = { formatters_by_ft = { dart = { "dart_format" } } },
  },
}
