local M = {}

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit" })

function M.lazygit_toggle()
  lazygit.dir = LazyVim.root.git()
  lazygit:toggle()
end

return M
