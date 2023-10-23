local dap = require("dap")

dap.adapters.debugpy = {
  type = "executable",
  -- command = os.getenv("HOME") .. "/.virtualenvs/tools/bin/python",
  command = "python",
  args = { "-m", "debugpy.adapter" },
}

dap.configurations.python = {
  {
    type = "debugpy",
    console = "internalConsole",
    request = "launch",
    name = "Debug Files",
    program = "${file}",
    -- pythonPath = function()
    -- 	return "/usr/bin/python"
    -- end,
  },
}
return {}
