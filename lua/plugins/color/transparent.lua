-- File: lua/custom/plugins/transparent.lua

return {
  "xiyaowong/transparent.nvim",
  enable = true,
  lazy = false,
  priority = 1000,
  config = function()
    require("transparent").setup({
      extra_groups = {
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NormalFloat",
      },
    })
    require("notify").setup({
      background_colour = "#000000",
    })

    vim.g.neovide_transparency = 0.8
    -- require("transparent").clear_prefix("lualine")
  end,
}
