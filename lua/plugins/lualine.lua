return {
  "nvim-lualine/lualine.nvim",
  opts = {
    sections = {
      lualine_y = {
        { "encoding", separator = " ", padding = { left = 1, right = 1 } },
        { "progress", separator = " ", padding = { left = 0, right = 0 } },
        { "location", padding = { left = 0, right = 1 } },
      },
      lualine_x = {
        {
          function()
            return ""
          end,
          color = function()
            return { fg = require("cmp_im").getChineseSymbolStatus() and "#A7C080" or "grey" }
          end,
        },
        {
          function()
            return "虎"
          end,
          color = function()
            return { fg = require("cmp_im").getStatus() and "#A7C080" or "grey" }
          end,
        },
      },
    },
  },
}
