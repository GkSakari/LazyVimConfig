return {
  {
    "rainzm/flash-zh.nvim",
    enabled = true,
    event = "VeryLazy",
    dependencies = {
      "folke/flash.nvim",
      event = "VeryLazy",
      keys = { { "s", false } },
      opts = {
        highlight = {
          backdrop = true,
          matches = true,
        },
        modes = {
          search = { enabled = false },
        },
      },
    },
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash-zh").jump({
            chinese_only = false,
          })
        end,
        desc = "Flash between Chinese",
      },
    },
  },
}
