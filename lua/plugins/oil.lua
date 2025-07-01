-- oil.nvim
-- Source: https://github.com/stevearc/oil.nvim
return {{
  "stevearc/oil.nvim", tag = "v2.15.0",
  -- Lazy loading is not recommended because it is very tricky to make it
  -- work correctly in all situations.
  lazy = false,
  ---@module 'oil'
  ---@type oil.SetupOpts
  config = function(opts)
    local opts = {
      win_options = {
        -- For more details on `get_oil_winbar()`, see ./config.lua
        -- winbar = "%!v:lua.get_oil_winbar()"
      },
      keymaps = {
        -- ["gd"] = { desc = "Toggle file detail view", callback = toggle_detail_view },
        ["<C-p>"] = { "actions.preview", opts = { split = "botright" } },
        ["<C-s>"] = { "actions.select", opts = { vertical = true, split = "botright" } },
        ["<C-h>"] = { "actions.select", opts = { horizontal = true, split = "botright" } },
      },
      view_options = { show_hidden = true }
    }
    require("oil").setup(opts)
    require("keymaps.oil")
  end
}}
