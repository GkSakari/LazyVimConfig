return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "nvim-telescope/telescope-dap.nvim",
    "mfussenegger/nvim-dap-python",
  },
  config = function()
    vim.keymap.set("n", "<F5>", function()
      -- require("telescope").extensions.dap.configurations({})
      require("dap").continue()
    end)
    vim.keymap.set("n", "<F10>", function()
      require("dap").step_over()
    end)
    vim.keymap.set("n", "<F11>", function()
      require("dap").step_into()
    end)
    vim.keymap.set("n", "<F12>", function()
      require("dap").step_out()
    end)
    vim.keymap.set("n", "<Leader>db", function()
      require("dap").toggle_breakpoint()
    end)
    vim.keymap.set("n", "<Leader>dB", function()
      require("dap").set_breakpoint()
    end)
    vim.keymap.set("n", "<Leader>lp", function()
      require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
    end)
    vim.keymap.set("n", "<Leader>dr", function()
      require("dap").repl.open()
    end)
    vim.keymap.set("n", "<Leader>dl", function()
      require("dap").run_last()
    end)
    vim.keymap.set({ "n", "v" }, "<Leader>dh", function()
      require("dap.ui.widgets").hover()
    end)
    vim.keymap.set({ "n", "v" }, "<Leader>dp", function()
      require("dap.ui.widgets").preview()
    end)
    vim.keymap.set("n", "<Leader>df", function()
      local widgets = require("dap.ui.widgets")
      widgets.centered_float(widgets.frames)
    end)
    vim.keymap.set("n", "<Leader>ds", function()
      local widgets = require("dap.ui.widgets")
      widgets.centered_float(widgets.scopes)
    end)

    vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg = 0 })
    vim.api.nvim_set_hl(0, "DapLogPoint", { ctermbg = 0 })
    vim.api.nvim_set_hl(0, "DapStopped", { ctermbg = 0 })

    local dap_breakpoint = {
      error = {
        text = "🛑",
        texthl = "DapBreakpoint",
        linehl = "DapBreakpoint",
        numhl = "DapBreakpoint",
      },
      condition = {
        text = "󰟃",
        texthl = "DapBreakpoint",
        linehl = "DapBreakpoint",
        numhl = "DapBreakpoint",
      },
      rejected = {
        text = "󰃤",
        texthl = "DapBreakpint",
        linehl = "DapBreakpoint",
        numhl = "DapBreakpoint",
      },
      logpoint = {
        text = "",
        texthl = "DapLogPoint",
        linehl = "DapLogPoint",
        numhl = "DapLogPoint",
      },
      stopped = {
        text = "󰜴",
        texthl = "DapStopped",
        linehl = "DapStopped",
        numhl = "DapStopped",
      },
    }

    vim.fn.sign_define("DapBreakpoint", dap_breakpoint.error)
    vim.fn.sign_define("DapBreakpointCondition", dap_breakpoint.condition)
    vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)
    vim.fn.sign_define("DapLogPoint", dap_breakpoint.logpoint)
    vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)

    local dap, dapui = require("dap"), require("dapui")
    require("nvim-dap-virtual-text").setup()
    require("dapui").setup({

      element_mappings = {
        scopes = {
          edit = "e",
          repl = "r",
        },
        watches = {
          edit = "e",
          repl = "r",
        },
        stacks = {
          open = "g",
        },
        breakpoints = {
          open = "g",
          toggle = "b",
        },
      },

      layouts = {
        {
          elements = {
            "scopes",
            "stacks",
            "breakpoints",
            "watches",
          },
          size = 0.2, -- 40 columns
          position = "left",
        },
        {
          elements = {
            "repl",
          },
          size = 0.25, -- 25% of total lines
          position = "bottom",
        },
        {
          elements = {
            "console",
          },
          size = 0.2,
          position = "right",
        },
      },

      floating = {
        max_height = nil, -- These can be integers or a float between 0 and 1.
        max_width = nil, -- Floats will be treated as percentage of your screen.
        border = "rounded", -- Border style. Can be "single", "double" or "rounded"
        mappings = {
          close = { "q", "<Esc>" },
        },
      },
    })
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
  end,
}
