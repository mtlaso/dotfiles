return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    -- your config here.
    -- or leave it empty to use the default settings
    -- refer to the confi section bellow
  }
}
