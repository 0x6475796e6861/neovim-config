-- nightfox.nvim
-- Source: https://github.com/EdenEast/nightfox.nvim
return {{
  "EdenEast/nightfox.nvim", tag = "v3.10.0",
  lazy = false,
  config = function(opts)
    local opts = {
      options = { transparent = true }
    }
    require("nightfox").setup(opts)
    vim.cmd("colorscheme carbonfox")
  end
}}
