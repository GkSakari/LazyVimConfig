return {
  "zzhirong/vim-easymotion-zh",
  enabled = false,
  dependencies = {
    "easymotion/vim-easymotion",
    config = function()
      vim.g.Easymotion_leader_key = ";"
      vim.g.Easymotion_skipfoldedline = 0
      vim.g.Easymotion_use_migemo = 1
      vim.g.Easymotion_space_jump_first = 1
      vim.g.Easymotion_move_highlight = 0
    end,
    keys = function()
      return {
        { "<space><space>", false },
        { mode = { "n", "o" }, "<leader>a", "<Plug>(easymotion-prefix)" },
        { mode = { "n", "o" }, "<leader>ks", "<Plug>(easymotion-overwin-f2)" },
        { mode = { "n", "o" }, "<leader>kz", "<Plug>(easymotion-f2)" },
        { mode = { "n", "o" }, "<leader>kf", "<Plug>(easymotion-fl)" },
        { mode = { "n", "o" }, "<leader>kF", "<Plug>(easymotion-Fl)" },
        { mode = { "n", "o" }, "<leader>kt", "<Plug>(easymotion-tl)" },
        { mode = { "n", "o" }, "<leader>kT", "<Plug>(easymot-Tl)" },
        { mode = { "n", "o" }, "<leader>;.", "<Plug>(easymotion-repeat)" },
        { mode = { "n", "o" }, "<leader>;l", "<Plug>(easymotion-next)" },
        { mode = { "n", "o" }, "<leader>;h", "<Plug>(easymotion-prev)" },
      }
    end,
  },
}
