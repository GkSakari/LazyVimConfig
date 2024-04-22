return {
  "nvim-neo-tree/neo-tree.nvim",
  init = function()
    require("neo-tree").setup({
      window = {
        width = 25,
        mappings = {
          ["l"] = "open",
        },
      },
    })
  end,
}
