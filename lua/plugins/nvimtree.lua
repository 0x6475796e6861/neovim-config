-- nvim-tree
-- Source: https://github.com/nvim-tree/nvim-tree.lua
return {{
  "nvim-tree/nvim-tree.lua", tag = "v1.13.0",
  enable = false,
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {},
  config = function(opts)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup()
  end
}}
