return {
  {
    "tpope/vim-dadbod",
    cmd = {
      "DB",
    },
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      "tpope/vim-dadbod",
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_save_location = vim.fn.stdpath("data") .. "/dadbod-ui"
    end,
  },
  {
    "kristijanhusak/vim-dadbod-completion",
    ft = {
      "sql",
      "mysql",
      "plsql",
    },
  },
}
