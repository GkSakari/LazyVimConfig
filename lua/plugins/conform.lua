return {
  "stevearc/conform.nvim",

  -- 1. 触发器：这些设置是正确的
  event = { "BufWritePre" }, -- 触发器1：保存文件时
  cmd = { "Conform", "ConformInfo" }, -- 触发器2：运行命令时

  -- 2. 触发器3：添加手动按键 (你之前问到的)
  keys = {
    {
      "<leader>f", -- 你可以改成你自己的快捷键
      function()
        -- 手动调用 conform 格式化
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = { "n", "v" },
      desc = "Format buffer",
    },
  },

  -- 3. 这是【修复】:
  -- opts 应该是一个纯数据表，而不是一个函数调用
  opts = {
    -- 你在 opts 里定义的表会和 LazyVim 的默认设置自动合并 (merge)
    -- 所以你只需要指定你想覆盖或添加的部分
    formatters_by_ft = {
      yaml = { "prettier" },
      -- ["*"] = { "codespell" },

      -- 你可能也想保留 LazyVim 的其他默认格式化器
      lua = { "stylua" },
      python = { "isort", "black" },
      -- ... 等等
    },

    -- 你其他的选项
    async = true,
    log_level = vim.log.levels.INFO,

    -- 你不需要在这里写 format_on_save
    -- LazyVim 的默认配置会帮你处理：
    -- 它看到 event = "BufWritePre" 就会自动启用 format_on_save
  },
}
