return {
  -- nvim-treesitter
  -- Source: https://github.com/nvim-treesitter/nvim-treesitter/
  {
    "nvim-treesitter/nvim-treesitter", tag = "v0.10.0",
    build = ":TSUpdate",
    opt = {
      highlight = {
          enable = true,
          -- Disable highlighting for large files 
          disable = function(lang, buf)
            local max_filesize = 100 * 1024 * 1024 -- 100 MB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
              return true
            end
          end,

          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = false,
        }
    }
  },
  -- nvim-treesitter-context
  -- Source: https://github.com/nvim-treesitter/nvim-treesitter-context
  {
    "nvim-treesitter/nvim-treesitter-context", tag = "v1.0.0",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opt = {}
  }
}
