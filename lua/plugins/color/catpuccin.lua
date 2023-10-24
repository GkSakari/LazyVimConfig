return {
  "catppuccin/nvim",
  name = "catppuccin",
  enable = true,
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
