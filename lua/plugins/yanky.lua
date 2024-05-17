return {
  "gbprod/yanky.nvim",
  keys = {
      -- stylua: ignore
    { mode = { "n", "x" }, "gp", false },
    { mode = { "n", "x" }, "gP", false },
    { mode = "n", "<C-p>", "<Plug>(YankyPreviousEntry)" },
    { mode = "n", "<C-n>", "<Plug>(YankyNextEntry)" },
    { mode = { "n", "x" }, "<C-v>", "<Plug>(YankyPutAfter)" },
    -- { mode = { "n", "x" }, "gp", '"0p' },
    -- { mode = { "n", "x" }, "gP", '"0P' },
  },
}
