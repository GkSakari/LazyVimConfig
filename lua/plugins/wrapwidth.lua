return {
  "/rickhowe/wrapwidth",
  init = function()
    vim.api.nvim_create_autocmd("BufReadPost", {
      pattern = "*",
      callback = function()
        vim.cmd("Wrapwidth 72")
      end,
    })
  end,
}
