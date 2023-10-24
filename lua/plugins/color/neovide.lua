local M = {}

vim.o.guifont = "Cousine Nerd Font,思源黑体 CN:h12:b"
vim.g.neovide_scroll_animation_length = 0.3
vim.g.neovide_refresh_rate = 140
vim.g.neovide_no_idle = true
vim.g.neovide_cursor_vfx_mode = "sonicboom"
vim.g.neovide_transparency = 0.7

if vim.g.neovide then
  vim.keymap.set("v", "<c-c>", '"+y') -- Copy
  vim.keymap.set("n", "<c-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<c-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<c-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<c-v>", '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap("", "<c-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<c-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<c-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<c-v>", "<C-R>+", { noremap = true, silent = true })

return M
