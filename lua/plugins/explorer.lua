local function get_explorer()
  return Snacks.picker.get({ source = "explorer" })[1]
end

local function focus_explorer()
  local explorer = get_explorer()

  if explorer then
    explorer:focus("list")
    return
  end

  Snacks.explorer({
    cwd = LazyVim.root(),
  })
end

local function toggle_explorer()
  local explorer = get_explorer()

  if explorer then
    explorer:close()
    return
  end

  Snacks.explorer({
    cwd = LazyVim.root(),
  })
end

return {
  {
    "folke/snacks.nvim",

    opts = {
      explorer = {
        enabled = true,
        replace_netrw = true,
      },

      picker = {
        sources = {
          explorer = {
            -- Keep Explorer alive when switching back to editor.
            auto_close = false,

            -- Explorer normally works from the list window.
            focus = "list",

            layout = {
              preset = "sidebar",
              -- The sidebar preset defaults to 40 columns; keep it 15% narrower.
              layout = {
                width = 25,
                min_width = 25,
              },
            },
          },
        },
      },
    },

    keys = {
      -- Focus Explorer.
      -- If Explorer does not exist, open it.
      -- Never closes an already-open Explorer.
      {
        "<leader>e",
        focus_explorer,
        desc = "Explorer Focus",
      },

      -- Explicit Explorer toggle.
      {
        "<leader>E",
        toggle_explorer,
        desc = "Explorer Toggle",
      },
    },

    init = function()
      -- Automatically open Explorer after LazyVim startup.
      vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        once = true,

        callback = function()
          vim.schedule(function()
            if get_explorer() then
              return
            end

            Snacks.explorer({
              cwd = LazyVim.root(),

              -- Open sidebar without stealing focus
              -- from the editor.
              enter = false,
            })
          end)
        end,
      })
    end,
  },
}
