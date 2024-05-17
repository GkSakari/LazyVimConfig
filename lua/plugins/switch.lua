return {
  "AndrewRadev/switch.vim",
  event = "VimEnter",
  cmd = { "Switch", "SwitchReverse", "SwitchExtend" },
  keys = { { mode = "n", "<leader>o", "<cmd>Switch<cr>", desc = "Switch" } },
  config = function()
    vim.g.switch_custom_definitions = {
      vim.fn["switch#NormalizedCaseWords"]({ "yes", "no" }),
      vim.fn["switch#Words"]({ "1", "0" }),
    }
  end,
}
