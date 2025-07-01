-- nightfox.nvim
-- Source: https://github.com/EdenEast/nightfox.nvim
return {{
  "EdenEast/nightfox.nvim", tag = "v3.10.0",
  lazy = false,
  opts = {
    options = { transparent = true, dim_inactive = true }
  },
  config = function(opts)
    require("nightfox").setup(opts)
    vim.cmd("colorscheme carbonfox")
  end
}}
