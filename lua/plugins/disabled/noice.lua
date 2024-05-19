return {
  "folke/noice.nvim",
  opts = {
    -- presets = {
    --   cmdline_output_to_split = true,
    -- },
    routes = {
      {
        filter = {
          event = "msg_show",
          any = {
            { find = "%d+L, %d+B" },
            { find = "; after #%d+" },
            { find = "; before #%d+" },
          },
        },
        view = "mini",
      },
      {
        filter = {
          event = "msg_show",
          min_height = 5,
          ["not"] = { find = "Found a swap file" },
        },
        view = "cmdline_output",
      },
    },
  },
}
