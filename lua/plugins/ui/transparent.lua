return {
  "xiyaowong/transparent.nvim",
  enabled = false,
  lazy = false,
  priority = 1500,
  config = function()
    require("transparent").setup({
      groups = {},
      extra_groups = {
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        -- "NormalFloat",
      },
    })
    -- require("notify").setup({
    --   background_colour = "#000000",
    -- })
    -- require("transparent").clear_prefix("lualine")
  end,
}
