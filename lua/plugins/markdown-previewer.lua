return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    keys = { { "<leader>cp", "<cmd>MarkdownPreviewToggle<cr>" } },
    build = "cd app && npm install && git restore .",
    ft = { "markdown" }, -- build = "cd app && yarn install",
    init = function()
      -- vim.g.mkdp_auto_start = 1
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_theme = "dark"
      vim.g.mkdp_preview_options = { ["disable_filename"] = 1 }
      vim.g.mkdp_markdown_css = "C:/Users/Sakarin/AppData/Local/nvim/css/markdown.css"
      -- vim.g.mkdp_browser = "C:/Program Files/Google/Chrome/Application/chrome.exe"
    end,
  },
}
