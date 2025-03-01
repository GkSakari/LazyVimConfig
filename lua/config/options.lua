-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp" }
opt.shiftwidth = 4 -- Size of an indent
opt.autochdir = true

-- 自动设置lua缩进
vim.api.nvim_command("autocmd FileType lua setlocal shiftwidth=2")
-- vim.api.nvim_command('autocmd FileType lua setlocal softtabstop=2')

-- 拼写检查
opt.spelllang = { "en", "cjk" }

opt.fileencodings = "ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1"
opt.enc = "utf8"

-- Folding

vim.g.lazyvim_python_lsp = "pyright"

-- enable powershell
local system = vim.loop.os_uname().sysname
if system == "Windows_NT" then
  local localappdata = os.getenv("LOCALAPPDATA")
  vim.g.sqlite_clib_path = localappdata .. "/nvim/data/sqlite3.dll"
  local powershell_options = {
    shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell",
    shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
    shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
    shellquote = "",
    shellxquote = "",
  }
  for option, value in pairs(powershell_options) do
    vim.opt[option] = value
  end
elseif system == "Linux" then
  -- vim.g.sqlite_clib_path = "/root/.config/nvim/data/sqlite3.dll"
end
