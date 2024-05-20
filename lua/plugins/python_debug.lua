-- mason.nvim integration
return {
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = "mason.nvim",
    cmd = { "DapInstall", "DapUninstall" },
    opts = {
      -- Makes a best effort to setup the various debuggers with
      -- reasonable debug configurations
      automatic_installation = false,
    },
  },
  {
    -- "mfussenegger/nvim-dap",
    -- optional = true,
    -- require("dap.ext.vscode").load_launchjs(),
    -- dependencies = {
    "mfussenegger/nvim-dap-python",
      -- stylua: ignore
      -- keys = {
      --   { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method", ft = "python" },
      --   { "<leader>dPc", function() require('dap-python').test_class() end, desc = "Debug Class", ft = "python" },
      -- },
    config = function()
      local system=vim.loop.os_uname().sysname
      local pypath= system == "Windows_NT" and "python.exe" or "python3"
      require("dap-python").setup(pypath)
    end,
    -- },
  },
}
