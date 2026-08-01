return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,

            -- Keep useful dotfiles visible, but hide Git internals.
            exclude = {
              ".git",
            },
          },
        },
      },
    },
  },
}
