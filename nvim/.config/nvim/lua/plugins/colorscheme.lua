return {
  "bluz71/vim-nightfly-guicolors",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      nightflyTransparent = true,
    }
  end,
  config = function()
    vim.cmd([[colorscheme nightfly]])
  end,
}
