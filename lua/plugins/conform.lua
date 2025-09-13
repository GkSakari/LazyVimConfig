return {
  "stevearc/conform.nvim",
  opts = {
    require("conform").setup({
      formatters_by_ft = {
        -- 为不同的文件类型配置不同的格式化器
        yaml = { "prettier" }, -- 就是这一行！
        -- 可以使用子键 "*" 为所有文件类型配置默认格式化器
        -- ["*"] = { "codespell" },
      },
      -- 可选：设置格式化时异步运行（默认true）
      async = true,
      -- 可选：启用详细日志（调试时有用）
      log_level = vim.log.levels.INFO,
    }),
  },
}
