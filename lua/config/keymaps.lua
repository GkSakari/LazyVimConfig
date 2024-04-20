-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

local map = Util.safe_keymap_set

map("i", "jk", "<Esc>")

-- 取消高亮
map("n", "<leader>nh", ":nohl<CR>")

-- 快速编译
map("n", "<F4>", ":!clang++ *.cpp<CR>")
map("n", "<C-F4>", ":!clang++ -g *.cpp<CR>")

-- window
map("n", "<leader>ww", "<C-w>w", { desc = "Other Window" })
map("n", "<leader>wo", "<C-w>o", { desc = "Close all other windows" })
map("n", "<leader>wx", "<C-w>x", { desc = "Swap current with next" })
map("n", "<leader>wt", "<C-w>T", { desc = "Break out into a new tab" })

-- tabs
map("n", "<tab><tab>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabe %<cr>", { desc = "New tab" })
map("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close all other tabs" })

-- 增加新行
map("n", "<CR>", "o<Esc>")

-- 全选
map("n", "<C-a>", "GVgg")
map({ "v", "i" }, "<C-a>", "<esc>GVgg")

map("n", "<C-y>", "GVggy<C-o><C-o>")
map("v", "<C-y>", "<esc>GVggy<C-o><C-o>")
map("i", "<C-y>", "<esc>GVggy<C-o><C-o>i")

-- 打开终端
vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")
-- map("n", "<c-_>", "<cmd>ToggleTerm<cr>")

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  map("t", "<esc><esc>", [[<C-\><C-n>]], opts)
  -- map("t", "jk", [[<C-\><C-n>]], opts)
  map("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  map("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  map("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  map("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  map("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
  map("t", "<MouseMove>", "<NOP>")
end
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

map("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
map("n", "<c-n>", "<Plug>(YankyNextEntry)")
map({ "n", "x" }, "<c-v>", "<Plug>(YankyPutAfter)")

map("n", "<leader>gg", "<cmd>lua require('config.utils').lazygit_toggle()<CR>", { desc = "Lazygit" })

-- -- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
