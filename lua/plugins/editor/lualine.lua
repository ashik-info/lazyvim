return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.theme = "auto"
      table.insert(opts.sections.lualine_x, {
        function()
          return "NVIM"
        end,
      })
    end,
  },
}
