return {
  "catppuccin/nvim",
  name = "catppuccin",
  enable = true,
  lazy = false,
  priority = 1000,
  config = function()
    require("notify").setup({
      background_colour = "#000000",
    })
    require("catppuccin").setup({
      flavour = "frappe",
      transparent_background = true,
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
