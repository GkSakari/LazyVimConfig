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

-- 打开终端
vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")
-- map("n", "<c-_>", "<cmd>ToggleTerm<cr>")

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end
vim.keymap.set("t", "<MouseMove>", "<NOP>")
-- markdown粘贴图片
map("n", "<leader>p", "<cmd>PinmdPaste<cr>")

vim.keymap.set("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
vim.keymap.set("n", "<c-n>", "<Plug>(YankyNextEntry)")
vim.keymap.set({ "n", "x" }, "<c-v>", "<Plug>(YankyPutAfter)")

-- lazygit
-- map("n", "<leader>gg", function()
--   Util.terminal({ "gitui" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false })
-- end, { desc = "Gitui (root dir)" })
-- map("n", "<leader>gG", function()
--   Util.terminal({ "gitui" }, { esc_esc = false, ctrl_hjkl = false })
-- end, { desc = "Gitui (cwd)" })

-- -- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
