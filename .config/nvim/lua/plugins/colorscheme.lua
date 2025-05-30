return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      day_brightness = 0.2, -- Adjust the brightness (default is 0.3)
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
