return {
  -- {
  --   "L3MON4D3/LuaSnip",
  --   keys = function()
  --     return {}
  --   end,
  -- },
  {
    "codota/tabnine-nvim",
    enabled = false,
    build = "pwsh.exe -file .\\dl_binaries.ps1",
    config = function()
      require("tabnine").setup({
        disable_auto_comment = true,
        accept_keymap = "<Tab>",
        dismiss_keymap = "<C-]>",
        debounce_ms = 800,
        suggestion_color = { gui = "#808080", cterm = 244 },
        exclude_filetypes = { "TelescopePrompt", "NvimTree" },
        log_file_path = nil,
      })
    end,
  },
}
