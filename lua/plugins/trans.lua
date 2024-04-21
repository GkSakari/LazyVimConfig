return {
  "GkSakari/Trans.nvim",
  dependencies = { "kkharji/sqlite.lua", enabled = true },
  build = function()
    require("Trans").install()
  end,
  keys = {
    -- 可以换成其他你想映射的键
    { "mm", mode = { "n", "x" }, "<Cmd>Translate<CR>", desc = " Translate" },
    { "ml", mode = { "n", "x" }, "V<Cmd>Translate<CR>", desc = " Translate Line" },
    { "mk", mode = { "n", "x" }, "<Cmd>TransPlay<CR>", desc = " Auto Play" },
    -- 目前这个功能的视窗还没有做好，可以在配置里将view.i改成hover
    { "mi", "<Cmd>TranslateInput<CR>", desc = " Translate From Input" },
  },
  opts = {
    -- your configuration there
    dir = "~/.config/nvim/data",
    debug = true,
    db_path = "~/.config/nvim/data/ultimate.db",
    frontend = {
      hover = {
        order = {
          offline = {
            "title",
            -- "tag",
            "pos",
            "exchange",
            "translation",
            "definition",
          },
        },
      },
    },
  },
}
