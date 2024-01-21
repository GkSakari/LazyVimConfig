return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    keys = { { "<leader>cp", "<cmd>MarkdownPreviewToggle<cr>" } },
    lazy = false,
    build = "cd app && npm install && git restore .",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_theme = "dark"
    end,
    ft = { "markdown" }, -- build = "cd app && yarn install",
    -- vim.g.mkdp_auto_start = 1
    config = function()
      -- vim.g.mkdp_browser = "C:/Program Files/Google/Chrome/Application/chrome.exe"
    end,
  },
}
