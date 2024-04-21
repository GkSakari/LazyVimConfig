local M = {}

local current_dir = LazyVim.root.get()
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", dir = current_dir, hidden = true })

function M.lazygit_toggle()
  lazygit:toggle()
end

return M
