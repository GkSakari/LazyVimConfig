local dap = require("dap")

dap.adapters.lldb = {
  id = "lldb",
  type = "executable",
  command = "C:/msys64/clang64/bin/lldb-vscode.exe",
  options = {
    detached = false,
  },
}

dap.configurations.cpp = {
  {
    name = "Debug file",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "\\", "file")
    end,
    -- program = "${workspaceFolder}\\a.exe",
    cwd = "${workspaceFolder}",
    stopAtEntry = true,
    -- externalConsole = false,
    -- MIMode = "gdb",
    -- miDebuggerPath = "D:\\CppApp\\llvm-mingw\\bin\\lldb.exe",
  },
  -- {
  --   name = 'Attach to gdbserver :1234',
  --   type = 'cppdbg',
  --   request = 'launch',
  --   MIMode = 'gdb',
  --   miDebuggerServerAddress = 'localhost:1234',
  --   --miDebuggerPath = '/usr/bin/gdb',
  --   cwd = '${workspaceFolder}',
  --   program = function()
  --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
  --   end,
  -- },
}

setupCommands = {
  {
    text = "-enable-pretty-printing",
    description = "enable pretty printing",
    ignoreFailures = false,
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
return {}
